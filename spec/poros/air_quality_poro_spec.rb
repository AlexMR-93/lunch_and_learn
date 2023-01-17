require "rails_helper"
RSpec.describe AirQuality do
  it 'create a AirQuality poro based on attribute' do
    data =  {:main=>{:aqi=>5},
             :components=>{:co=>554.09, :no=>0, :no2=>5.83, :o3=>85.83, :so2=>7.27, :pm2_5=>132.32, :pm10=>143.6, :nh3=>11.27},
             :dt=>1673976741
    }


    a_quality = AirQuality.new (data)
    expect(a_quality).to be_a AirQuality
    expect(a_quality.aqi).to eq(5)
    expect(a_quality.dt).to eq(1673976741)
  end
end
