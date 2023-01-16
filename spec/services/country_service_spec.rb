require 'rails_helper'

RSpec.describe CountryService do
  it '.capital_info' do
    response = CountryService.get_all_countries
    expect(response).to be_a Array
    expect(response.first).to be_a Hash
    expect(response.first).to have_key :name
    expect(response.first[:name]).to have_key :common
    expect(response.first[:name]).to have_key :nativeName
    expect(response.first[:name][:common]).to eq "Grenada"
  end
end
