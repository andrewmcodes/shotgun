# frozen_string_literal: true

# Sidekiq::Extensions.enable_delay!

defaults = {
  url: ENV["REDIS_URL"],
  db: ENV["REDIS_DB"],
  namespace: ENV["SIDEKIQ_NAMESPACE"]
}

Sidekiq.configure_server do |config|
  config.redis = defaults.merge(size: 50)
end

Sidekiq.configure_client do |config|
  config.redis = defaults.merge(size: 10)
end
