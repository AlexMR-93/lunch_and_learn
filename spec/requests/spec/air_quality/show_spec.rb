require 'rails_helper'

RSpec.describe 'air quality #show' do
  describe 'happy path' do
    describe 'when a request is made to /api/v1/air_quality?country=country' do
      it 'exists', :vcr do
        country = "India"
        get "/api/v1/air_quality?country=#{country}"
        expect(response).to be_successful
        final_data = JSON.parse(response.body,symbolize_names: true)
        expect(final_data).to be_a(Hash)
        expect(final_data).to have_key(:data)
        expect(final_data[:data]).to be_a(Array)
        expect(final_data[:data].first).to have_key(:id)
        expect(final_data[:data].first).to have_key(:type)
        expect(final_data[:data].first).to have_key(:attributes)
        expect(final_data[:data].first[:attributes]).to have_key(:aqi)
        expect(final_data[:data].first[:attributes][:aqi]).to be_a(Integer)
        expect(final_data[:data].first[:attributes][:dt]).to be_a(Integer)

      end
    end
  end
end