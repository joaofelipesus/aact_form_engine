require 'rails_helper'

module AactFormEngine
  RSpec.describe FormKind, type: :model do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:answer_sequence) }

    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:answer_sequence) }
  end
end
