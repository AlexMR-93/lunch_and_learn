require 'rails_helper'

RSpec.describe 'air quality #show' do
  describe 'happy path' do
    describe 'when a request is made to /api/v1/air_quality?country=country' do
      it 'exists', :vcr do
        country = "India"
        get "/api/v1/air_quality?country=#{country}"
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)

      end
    end
  end
end