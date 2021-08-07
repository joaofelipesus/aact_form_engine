# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount AactFormEngine::Engine => '/aact_form_engine'

  root to: 'aact_form_engine/home#index'
end
