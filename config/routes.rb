# frozen_string_literal: true

# Uncomment this to use the sidekiq web UI
# require "sidekiq/web"

Rails.application.routes.draw do
  # authenticate :user, lambda { |u| u.admin? } do
  #   mount Sidekiq::Web => "/sidekiq"
  # end

  resources :announcements, only: [:index]
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  root to: "home#index"
end
