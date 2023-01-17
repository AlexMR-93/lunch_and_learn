require 'rails_helper'

RSpec.describe AirQualityService do
  it '.get_info(lat,long)' do
    lat = 20
    long = 22
    response = AirQualityService.get_info(lat,long)
    expect(response).to be_a(Hash)
    expect(response[:coord]).to be_a(Hash)
    expect(response[:coord][:lon]).to eq(22)
    expect(response[:coord][:lat]).to eq(20)

  end
end
