require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  describe 'GET #index' do
    before do
      allow(PeopleService).to receive(:get).and_return({"blah":"blah"})
    end

    it 'returns back a list of people' do
      get :index
      expect(response.body).to eq '{"blah":"blah"}'
    end
  end

  describe 'GET #allEmailBreakdown' do
    let(:people) do
      {
        "data": [
          {
            "emailAddress": "hey@hey.net",
          },
          {
            "emailAddress": "foo@bar.com",
          },
          {
            "emailAddress": "fiz@bah.org",
          }
        ]
      }
    end
    before do
      allow(PeopleService).to receive(:get).and_return(people)
    end

    it 'returns a breakdown of the number of each characters combined in email of all People' do
      get :allEmailBreakdown
      expected = "{\"h\":3,\"e\":3,\"y\":2,\"@\":3,\".\":3,\"n\":1,\"t\":1,\"f\":2,\"o\":4,\"b\":2,\"a\":2,\"r\":2,\"c\":1,\"m\":1,\"i\":1,\"z\":1,\"g\":1}"
      expect(response.body).to eq expected
    end
  end

end
