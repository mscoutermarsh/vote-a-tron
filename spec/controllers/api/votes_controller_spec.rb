require 'spec_helper'

describe Api::VotesController do
  let(:poll) { FactoryGirl.create(:poll) }

  describe "GET #show" do
    before(:each) { get :show, id: poll.id, format: :json }

    it 'returns the information for one poll' do
      expect(json['name']).to eql poll.name
      expect(json).to have_key('id')
      expect(json).to have_key('active')
    end

    it 'returns all contestant data' do
      expect(json).to have_key('contestants')
      expect(json['contestants'].first).to have_key('name')
      expect(json['contestants'].first).to have_key('id')
      expect(json['contestants'].first).to have_key('votes')
      expect(json['contestants'].size).to eql poll.contestants.size
    end

    it { should respond_with 200 }
  end
end
