require 'rails_helper'

RSpec.describe PeopleService, type: :service do
  describe '#get' do
    before do
      allow(Rails.application.config).to receive(:salesloft_api_url).and_return('bogus-url.com')
      allow(Rails.application.config).to receive(:salesloft_api_key).and_return('123456')
      allow(HTTParty).to receive(:get).and_return({ person1: 'bob saget' }.to_json)
    end

    it 'gets a list of people from an api call' do
      expect(HTTParty).to receive(:get).with('bogus-url.com/people.json',
        headers: {
            "Authorization":"Bearer 123456"
        })
      expect(PeopleService.get).to eq '{"person1":"bob saget"}'
    end
  end
end
