# frozen_string_literal: true

module AactFormEngine
  class FormKind < ApplicationRecord
    validates :name, :answer_sequence, presence: true
    validates :name, :answer_sequence, uniqueness: true
  end
end
