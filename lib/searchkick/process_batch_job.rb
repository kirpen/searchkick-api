module Searchkick
  class ProcessBatchJob < ActiveJob::Base
    queue_as { Searchkick.queue_name }

    def perform(class_name:, record_ids:, index_name: nil, locale: I18n.locale)
      # separate routing from id
      routing = Hash[record_ids.map { |r| r.split(/(?<!\|)\|(?!\|)/, 2).map { |v| v.gsub("||", "|") } }]
      record_ids = routing.keys

      klass = class_name.constantize
      scope = Searchkick.load_records(klass, record_ids)
      scope = scope.search_import if scope.respond_to?(:search_import)
      records = scope.select(&:should_index?)

      # determine which records to delete
      delete_ids = record_ids - records.map { |r| r.id.to_s }
      delete_records = delete_ids.map do |id|
        m = klass.new
        m.id = id
        if routing[id]
          m.define_singleton_method(:search_routing) do
            routing[id]
          end
        end
        m
      end

      # bulk reindex
      index = klass.searchkick_index(name: index_name)
      indexer(index, locale: locale, refresh: records, delete: delete_records)
    end

    private

    # Inherit from Searchkick::ProcessBatchJob and implement whatever you need
    def indexer(index, locale: I18n.locale, refresh:, delete:)
      I18n.with_locale(locale) do
        Searchkick.callbacks(:bulk) do
          index.bulk_index(refresh) if refresh.any?
          index.bulk_delete(delete) if delete.any?
        end
      end
    end
  end
end
