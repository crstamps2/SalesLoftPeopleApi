require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  describe 'GET #index' do
    before do
      allow(PeopleService).to receive(:get).and_return('{"blah":"blah"}')
    end

    it 'returns back a list of people' do
      get :index
      expect(response.body).to eq '{"blah":"blah"}'
    end
  end
end
