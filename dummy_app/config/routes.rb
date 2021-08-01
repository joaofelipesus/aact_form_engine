# frozen_string_literal: true

Rails.application.routes.draw do
  mount AactFormEngine::Engine => '/aact_form_engine'

  root to: 'aact_form_engine/home#index'
end
