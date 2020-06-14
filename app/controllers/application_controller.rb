class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :store_ids
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_raven_context
  before_action :set_ngrok_urls, if: -> { Rails.env.development? }

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  private

  def store_ids
    cookies.encrypted[:cuid] = current_user&.id
    cookies.encrypted[:sid] = session&.id
  end

  def set_raven_context
    Raven.user_context(id: session&.id)
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end

  # Nothing to see here...
  def set_ngrok_urls
    if Ngrok::Tunnel.running?
      url = Ngrok::Tunnel.ngrok_url_https
      default_url_options = {host: url}
      Rails.application.config.action_controller.asset_host = url
      Rails.application.config.action_mailer.asset_host = url
      Rails.application.routes.default_url_options = default_url_options
      Rails.application.config.action_mailer.default_url_options = default_url_options
    end
  end
end
