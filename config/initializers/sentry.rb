# frozen_string_literal: true

# require 'raven/processor/postdata'
# require 'raven/processor/cookies'

Raven.configure do |config|
  config.dsn = ENV["SENTRY_DSN"]
  config.async = ->(event) { SentryWorker.perform_later(event) }
  # config.encoding = :gzip
  config.environments = %w[production]
  config.current_environment = Rails.env
  # config.excluded_exceptions += ['ActionController::RoutingError', 'ActiveRecord::RecordNotFound']
  # config.inspect_exception_causes_for_exclusion = false
  # config.logger = Raven::Logger.new(STDOUT)
  # config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  # config.sanitize_http_headers = ["Via", "Referer", "User-Agent", "Server", "From"]

  # By default, Sentry does not send POST data or cookies if present.
  # To re-enable, remove the respective processor from the chain:
  # config.processors -= [Raven::Processor::PostData]
  # config.processors -= [Raven::Processor::Cookies]

  # config.proxy = 'http://path.to.my.proxy.com'
  # config.rails_report_rescued_exceptions = true
  # config.sample_rate = 1
  # config.should_capture = Proc.new { |e| true unless e.contains_sensitive_info? }
  # config.silence_ready = false
  # config.ssl_verification = true
  # config.tags = { foo: :bar }
  # config.transport_failure_callback = lambda { |event|
  #   AdminMailer.email_admins("Oh god, it's on fire!").deliver_later
  # }
  # config.before_send = lambda { |event, hint|
  #   event.fingerprint = ['fingerprint']
  #   event
  # }
end
