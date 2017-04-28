# -*- encoding: utf-8 -*-
# stub: sidekiq-limit-worker 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sidekiq-limit-worker"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Amrit Singh"]
  s.date = "2017-04-28"
  s.description = "Number of sidekiq jobs in the queue. And if limit crosses job will be executed in place"
  s.email = "amrit0403@gmail.com"
  s.extra_rdoc_files = ["README.md", "lib/client/middleware.rb", "lib/middleware.rb", "lib/options_with_fallback.rb", "lib/sidekiq_limit_worker.rb"]
  s.files = ["Manifest", "README.md", "Rakefile", "lib/client/middleware.rb", "lib/middleware.rb", "lib/options_with_fallback.rb", "lib/sidekiq_limit_worker.rb", "sidekiq-limit-worker.gemspec"]
  s.homepage = "http://github.com/amritsingh/sidekiq-limit-worker"
  s.rdoc_options = ["--line-numbers", "--title", "Sidekiq-limit-worker", "--main", "README.md"]
  s.rubyforge_project = "sidekiq-limit-worker"
  s.rubygems_version = "2.4.8"
  s.summary = "Number of sidekiq jobs in the queue. And if limit crosses job will be executed in place"
end
