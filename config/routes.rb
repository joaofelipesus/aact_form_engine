# frozen_string_literal: true

AactFormEngine::Engine.routes.draw do
  resources :home, only: [:index]
end
