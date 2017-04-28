require 'sidekiq/api'

module SidekiqLimitWorkers
  module Client
    class Middleware
      include OptionsWithFallback
      def call(worker_class, job, queue, redis_pool=nil)
        @worker_class = worker_class.is_a?(String) ? worker_class.constantize : worker_class
        @job = job
        @queue = queue
        @redis_pool = redis_pool

        if limit_exceeded?
          @worker_class.new.perform(@job['args'].first)
          return false
        else
          yield
        end
      end

      private
      attr_reader :job, :worker_class, :redis_pool, :queue
    end
  end
end

