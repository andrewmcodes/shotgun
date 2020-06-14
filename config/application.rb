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

module Medals
  class Application < Rails::Application
    config.active_record.observers = %i[]
    config.load_defaults(6.0)
    config.generators do |g|
      g.assets false
      g.stylesheets false
      g.helpers false
    end
  end
end
