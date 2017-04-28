require 'sidekiq'

module SidekiqLimitWorkers
  module Middleware
    def self.extended(base)
      base.class_eval do
        configure_client_middleware
      end
    end

    def configure_client_middleware
      Sidekiq.configure_client do |config|
        config.client_middleware do |chain|
          require 'sidekiq_unique_jobs/client/middleware'
          chain.add SidekiqLimitWorkers::Client::Middleware
        end
      end
    end
  end
end

SidekiqLimitWorkers.send(:extend, SidekiqLimitWorkers::Middleware)
