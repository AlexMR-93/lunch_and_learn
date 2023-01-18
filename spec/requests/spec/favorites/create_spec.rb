require 'rails_helper'

RSpec.describe 'favorite #create' do
  describe 'happy path' do
    describe 'when a request is made to POST /api/v1/favorites ' do
      it 'creates a new user', :vcr do

        test_user = User.create!(name: "Peyton Mora", email: "Peybar5@gmail.com", api_key: SecureRandom.hex(27))
        favorites = {
          api_key: test_user.api_key,
          country: "thailand",
          recipe_link: "https://www.tastingtable.com/.....",
          recipe_title: "Crab Fried Rice (Khaao Pad Bpu)"
        }

        post  "/api/v1/favorites", params: favorites

        data = JSON.parse(response.body,symbolize_names: true)
        expect(response).to be_successful
        expect(data).to be_a(Hash)
        expect(data[:success]).to eq("Favorite added successfully")
        expect(response).to have_http_status(201)
      end
    end
  end
  describe 'Sad path' do
    describe 'when a request is made to POST /api/v1/favorites ' do
      it 'returns error message 404 and doesnt create the favorite', :vcr do

        test_user = User.create!(name: "Peyton Mora", email: "Peybar5@gmail.com", api_key: SecureRandom.hex(27))
        favorites = {
          api_key: "123abc",
          country: "thailand",
          recipe_link: "https://www.tastingtable.com/.....",
          recipe_title: "Crab Fried Rice (Khaao Pad Bpu)"
        }

        post  "/api/v1/favorites", params: favorites

        data = JSON.parse(response.body,symbolize_names: true)

        expect(data).to be_a(Hash)
        expect(data[:error]).to eq("Bad Request. User Not Valid.")
        expect(response).to have_http_status(404)
      end
    end
  end
end
  