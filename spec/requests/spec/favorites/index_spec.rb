require 'rails_helper'

RSpec.describe 'favorite #create' do
describe 'happy path #index' do
  describe 'when a request is made to POST /api/v1/favorites/api_key ' do
    it 'returns all of the users valid data', :vcr do
      test_user1 = User.create!(name: "Peyton Mora", email: "Peybar5@gmail.com", api_key: SecureRandom.hex(27))
      test_user1.favorites.create!({
                                     country: "egypt",
                                     recipe_link: "http://www.thekitchn.com/recipe-egyptian-tomato-soup-weeknight....",
                                     recipe_title: "Recipe: Egyptian Tomato Soup"
                                   })

      test_user2 = User.create!(name: "Alex Mora", email: "AAAAAAAA@gmail.com", api_key: SecureRandom.hex(27))
      test_user2.favorites.create!({
                                     country: "thailand",
                                     recipe_link: "https://www.tastingtable.com/.....",
                                     recipe_title: "Crab Fried Rice (Khaao Pad Bpu)"
                                   })
      test_user3 = User.create!(name: "Beans Mora", email: "BEANS@gmail.com", api_key: SecureRandom.hex(27))
      test_user3.favorites.create!({
                                     country: "canada",
                                     recipe_link: "https://www.ohCanda.com/.....",
                                     recipe_title: "Maple pancakes"
                                   })
      api_key1 = test_user1.api_key
      get "/api/v1/favorites?api_key=#{api_key1}"

      data = JSON.parse(response.body,symbolize_names: true)
      expect(data).to be_a(Hash)
    end
  end
end
end