require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('sidekiq-limit-worker', '0.1.0') do |p|
  p.description    = "Number of sidekiq jobs in the queue. And if limit crosses job will be executed in place"
  p.url            = "http://github.com/amritsingh/sidekiq-limit-worker"
  p.author         = "Amrit Singh"
  p.email          = "amrit0403@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
