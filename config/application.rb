# frozen_string_literal: true

require_relative "boot"

# only require Rails libraries that we actually use, this shaves off some memory
# ActionMailbox and ActionText are not currently used by the app
# see https://github.com/rails/rails/blob/v6.0.2.1/railties/lib/rails/all.rb
%w[
  active_record/railtie
  active_storage/engine
  action_controller/railtie
  action_view/railtie
  action_mailer/railtie
  active_job/railtie
  action_cable/engine
  rails/test_unit/railtie
  sprockets/railtie
].each do |lib|
  require lib
end

require "view_component/engine"

Bundler.require(*Rails.groups)
Dotenv::Railtie.load

module CHANGEME
  class Application < Rails::Application
    config.load_defaults(6.0)

    # Enable active record observers.
    # https://github.com/rails/rails-observers#active-record-observer
    config.active_record.observers = %i[]

    # Use sidekiq for background job processing
    # https://github.com/mperham/sidekiq/wiki/Active-Job#active-job-setup
    config.active_job.queue_adapter = :sidekiq

    # Alter what generators are used when using rails generate/scaffold
    # See: https://guides.rubyonrails.org/configuring.html#configuring-generators
    config.generators do |g|
      g.assets false
      g.stylesheets false
      g.helpers false
    end
  end
end
