# frozen_string_literal: true

require 'factory_bot_rails'

FactoryBot.define do
  factory :participant, class: AactFormEngine::Participant do
    user { User.create }
  end
end
