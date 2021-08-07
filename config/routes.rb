# frozen_string_literal: true

AactFormEngine::Engine.routes.draw do
  devise_for :users, class_name: "AactFormEngine::User"
  # devise_for :users
  resources :home, only: [:index]
  # devise_for :users, class_name: 'AactFormEngine::User'
end
