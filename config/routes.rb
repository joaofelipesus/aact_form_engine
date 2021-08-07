# frozen_string_literal: true

AactFormEngine::Engine.routes.draw do
  devise_for :users
  resources :home, only: [:index]
end
