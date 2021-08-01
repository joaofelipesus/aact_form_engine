module AactFormEngine
  class Participant < ApplicationRecord
    belongs_to :user
  end
end
