class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :store_ids
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_raven_context, if: -> { Rails.env.production? }

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
    # Raven.user_context(id: session&.id)
    # Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end
end
