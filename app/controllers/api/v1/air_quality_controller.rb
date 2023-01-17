class Api::V1::AirQualityController < ApplicationController
  def show
    data = CountryFacade.get_country_pick(params[:country]).first
    air_data = AirQualityFacade.get_air(data.name)
    render json:AirQualitySerializer.new(air_data)
  end
end
