return if Rails.env.test?

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis:7379/0' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:7379/0' }
end
