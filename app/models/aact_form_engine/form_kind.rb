# frozen_string_literal: true

module AactFormEngine
  class FormKind < ApplicationRecord
    validates :name, :sequence, presence: true
    validates :name, :sequence, uniqueness: true
  end
end
