# frozen_string_literal: true

# require 'raven/processor/postdata'
# require 'raven/processor/cookies'

Raven.configure do |config|
  config.dsn = ENV["SENTRY_DSN"]
  config.async = ->(event) { SentryWorker.perform_later(event) }
  # config.encoding = :gzip
  config.environments = %w[production]
  config.current_environment = Rails.env
end
