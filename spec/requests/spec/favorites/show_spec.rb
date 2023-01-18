require 'rails_helper'

RSpec.describe 'favorite #show' do
  describe 'happy path' do
    describe 'when a request is made to POST /api/v1/favorites ' do
      it 'creates a new user', :vcr do

        test_user = User.create!(name: "Peyton Mora", email: "Peybar5@gmail.com", api_key: SecureRandom.hex(27))

        post  "/api/v1/favorites", params:{api_key: test_user.api_key, "country": "thailand", "recipe_link": "https://www.tastingtable.com/.....", "recipe_title": "Crab Fried Rice (Khaao Pad Bpu"}

        expect(response).to be_successful
        data = JSON.parse(response.body,symbolize_names: true)
        expect(data).to be_a(Hash)
      end
    end
  end
end
