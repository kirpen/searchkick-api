# -*- encoding: utf-8 -*-
# stub: searchkick 4.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "searchkick".freeze
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Kane".freeze]
  s.date = "2021-06-16"
  s.email = "andrew@chartkick.com".freeze
  s.files = ["CHANGELOG.md".freeze, "CONTRIBUTING.md".freeze, "LICENSE.txt".freeze, "README.md".freeze, "lib/searchkick".freeze, "lib/searchkick.rb".freeze, "lib/searchkick/bulk_indexer.rb".freeze, "lib/searchkick/bulk_reindex_job.rb".freeze, "lib/searchkick/hash_wrapper.rb".freeze, "lib/searchkick/index.rb".freeze, "lib/searchkick/index_options.rb".freeze, "lib/searchkick/indexer.rb".freeze, "lib/searchkick/logging.rb".freeze, "lib/searchkick/middleware.rb".freeze, "lib/searchkick/model.rb".freeze, "lib/searchkick/multi_search.rb".freeze, "lib/searchkick/process_batch_job.rb".freeze, "lib/searchkick/process_queue_job.rb".freeze, "lib/searchkick/query.rb".freeze, "lib/searchkick/railtie.rb".freeze, "lib/searchkick/record_data.rb".freeze, "lib/searchkick/record_indexer.rb".freeze, "lib/searchkick/reindex_queue.rb".freeze, "lib/searchkick/reindex_v2_job.rb".freeze, "lib/searchkick/results.rb".freeze, "lib/searchkick/version.rb".freeze, "lib/tasks/searchkick.rake".freeze]
  s.homepage = "https://github.com/ankane/searchkick".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Intelligent search made easy with Rails and Elasticsearch".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>.freeze, [">= 5"])
      s.add_runtime_dependency(%q<elasticsearch>.freeze, [">= 6"])
      s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activemodel>.freeze, [">= 5"])
      s.add_dependency(%q<elasticsearch>.freeze, [">= 6"])
      s.add_dependency(%q<hashie>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activemodel>.freeze, [">= 5"])
    s.add_dependency(%q<elasticsearch>.freeze, [">= 6"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
