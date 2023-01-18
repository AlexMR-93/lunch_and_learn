require 'rails_helper'

RSpec.describe 'Users #create' do
  describe 'happy path' do
    describe 'when a request is made to POST /api/v1/users ' do
      it 'creates a new user', :vcr do
        post  "/api/v1/users", params:{name:"Athena Dao",email: "athenadao@bestgirlever.com"}
        expect(response).to be_successful
        data = JSON.parse(response.body,symbolize_names: true)
        expect(data).to be_a(Hash)
        expect(data[:data][:id].to_i).to be_a(Integer)
        expect(data[:data][:type]).to be_a(String)
        expect(data[:data][:type]).to eq("user")
        expect(data[:data][:attributes]).to be_a(Hash)
        expect(data[:data][:attributes][:name]).to be_a(String)
        expect(data[:data][:attributes][:name]).to eq("Athena Dao")
        expect(data[:data][:attributes][:email]).to be_a(String)
        expect(data[:data][:attributes][:email]).to eq("athenadao@bestgirlever.com")
        expect(data[:data][:attributes][:api_key]).to be_a(String)
      end
    end
  end
end
