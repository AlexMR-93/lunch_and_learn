require 'rails_helper'

RSpec.describe 'recipes#index', :vcr do
  describe 'happy path' do
    describe 'when a request is made to api/v1/recipes?country={country}' do
      it 'returns a json response' do
        country = "mexico"
        get "/api/v1/recipes?country=#{country}"

        expect(response).to be_successful
        result = json(response)
        expect(result).to have_key(:data)

        data = result[:data]
        expect(result[:data]).to be_an Array

      end
    end
  end
end
