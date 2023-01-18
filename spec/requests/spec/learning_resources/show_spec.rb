require 'rails_helper'

RSpec.describe 'learning resources #show' do
  describe 'happy path' do
    describe 'when a request is made to /api/v1/learning_resources?country=country' do
      it 'exists/makes the correct hash output', :vcr do
        country = "mexico"
        get "/api/v1/learning_resources?country=#{country}"

        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        expect(result).to have_key(:data)
        expect(result[:data]).to have_key(:id)
        expect(result[:data]).to have_key(:type)
        expect(result[:data]).to have_key(:attributes)
        expect(result[:data][:attributes]).to have_key(:country)
        expect(result[:data][:attributes][:country]).to eq("mexico")
        expect(result[:data][:attributes]).to have_key(:video)
        expect(result[:data][:attributes][:video]).to be_a Hash
        expect(result[:data][:attributes][:video]).to have_key(:title)
        expect(result[:data][:attributes][:video][:title]).to eq("A Super Quick History of Mexico")
        expect(result[:data][:attributes][:video]).to have_key(:youtube_video_id)
        expect(result[:data][:attributes]).to have_key(:images)

      end
    end
  end
  describe 'sad path' do
    describe 'when a request is made to /api/v1/learning_resources?country=country' do
      it 'DOES NOT exists/blank makes the error hash', :vcr do
        country = ""
        get "/api/v1/learning_resources?country=#{country}"
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        expect(result).to have_key(:data)
        expect(result[:data]).to have_key(:id)
        expect(result[:data]).to have_key(:type)
        expect(result[:data]).to have_key(:attributes)
        expect(result[:data][:attributes]).to have_key(:country)
        expect(result[:data][:attributes][:country]).to eq("")
        expect(result[:data][:attributes]).to have_key(:video)
      end
    end
  end
end
