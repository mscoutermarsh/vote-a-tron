require 'spec_helper'

describe Vote do
  describe 'Validations' do
    it { should validate_presence_of :contestant }
  end

  describe 'Associations' do
    it { should belong_to :contestant }
  end
end
