require 'rails_helper'

module AactFormEngine
  RSpec.describe Participant, type: :model do
    xit 'first' do
      byebug
    end

    it { should belong_to(:user) }
  end
end
