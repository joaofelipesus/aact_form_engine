require 'rails_helper'

module AactFormEngine
  RSpec.describe Participant, type: :model do
    it { should belong_to(:user) }
  end
end
