require 'spec_helper'

describe Contestant do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :poll }
  end

  describe 'Associations' do
    it { should have_many :votes }
    it { should belong_to :poll }
  end
end
