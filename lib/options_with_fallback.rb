module SidekiqLimitWorkers
  module OptionsWithFallback
    def limit_exceeded?
      options[MAX_QUEUE_SIZE].present? && (options[MAX_QUEUE_SIZE] <= queued_jobs_in(options[QUEUE_KEY]))
    end

    def queued_jobs_in q
      Sidekiq::Queue.new(q).size
    end

    def options
      @options ||= worker_class.get_sidekiq_options if worker_class.respond_to?(:get_sidekiq_options)
      @options ||= Sidekiq.default_worker_options
      @options ||= {}
      @options &&= @options.stringify_keys
    end
  end
end
