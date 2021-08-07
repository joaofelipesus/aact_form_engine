# frozen_string_literal: true

AactFormEngine::Engine.routes.draw do
  devise_for :users, class_name: 'AactFormEngine::User', module: :devise
  resources :home, only: [:index]
end
