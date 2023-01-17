require 'rails_helper'

RSpec.describe 'recipes#index', :vcr do
  describe 'happy path' do
    describe 'when a request is made to api/v1/recipes?country={country}' do
      it 'user input country', :vcr do
        country = "mexico"
        get "/api/v1/recipes?country=#{country}"
        VCR.insert_cassette("user_input_country")
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        expect(result).to have_key(:data)
        expect(result[:data]).to be_an Array
        expect(result[:data].first).to be_a(Hash)
        expect(result[:data].first).to have_key(:id)
        expect(result[:data].first[:id]).to eq(nil)
        expect(result[:data].first).to have_key(:type)
        expect(result[:data].first[:type]).to eq("recipes")
        expect(result[:data].first).to have_key(:attributes)
        expect(result[:data].first[:attributes][:id]).to eq(nil)
        expect(result[:data].first[:attributes][:title]).to eq("Avocado from Mexico, Orange and Watercress Salad. Adapted from Chef Richard Sandoval, New York, Mexico and Dubai")
        expect(result[:data].first[:attributes][:url]).to eq("https://food52.com/recipes/5794-avocado-from-mexico-orange-and-watercress-salad-adapted-from-chef-richard-sandoval-new-york-mexico-and-dubai")
        expect(result[:data].first[:attributes][:country]).to be_a(String)
        VCR.eject_cassette
      end
    end
  end
  describe 'sad path' do
    describe 'when a request is made to api/v1/recipes' do
      it 'random country', :vcr do
        get "/api/v1/recipes"
        VCR.insert_cassette("random_country")
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        expect(result).to have_key(:data)
        expect(result[:data]).to be_an Array
        expect(result[:data].first).to have_key(:id)
        expect(result[:data].first[:id]).to eq(nil)
        expect(result[:data].first).to have_key(:type)
        expect(result[:data].first[:type]).to eq("recipes")
        expect(result[:data].first).to have_key(:attributes)
        expect(result[:data].first[:attributes][:id]).to eq(nil)
        expect(result[:data].first[:attributes][:country]).to be_a(String)
        VCR.eject_cassette
      end
    end
  end
  describe 'sad path w/ non existing country ' do
    describe 'when a request is made to api/v1/recipes?country={country} ' do
      it 'non existant country', :vcr do
        country = "loading dinosaur"
        get "/api/v1/recipes?country=#{country}"
        VCR.insert_cassette("non_existant_country")
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        expect(result).to eq(render json: {
          "data": []
        })
        VCR.eject_cassette
      end
    end
  end
  describe 'sad path w/ only spaces ' do
    describe 'when a request is made to api/v1/recipes?country={country} ' do
      it 'only spaces', :vcr do
        country = " "
        get "/api/v1/recipes?country=#{country}"
        VCR.insert_cassette("non_existant_country")
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        expect(result).to eq(render json: {
          "data": []
        })
        VCR.eject_cassette
      end
    end
  end
end
