require 'rails_helper'

RSpec.describe 'learning resources #show' do
  describe 'happy path' do
    describe 'when a request is made to /api/v1/learning_resources?country=country' do
      it 'exists', :vcr do
        country = "mexico"
        get "/api/v1/learning_resources?country=#{country}"
        VCR.insert_cassette("exists")
        expect(response).to be_successful
        result = JSON.parse(response.body,symbolize_names: true)
        VCR.eject_cassette
      end
    end
  end
  end