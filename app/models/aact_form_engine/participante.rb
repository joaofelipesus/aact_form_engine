# frozen_string_literal: true

module AactFormEngine
  class Participante < ApplicationRecord
    belongs_to :user
  end
end
