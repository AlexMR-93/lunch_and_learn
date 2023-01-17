class Api::V1::AirQualityController < ApplicationController
  def show
    data = CountryFacade.get_country_pick(params[:country]).first
    AirQualityFacade.get_air(data.name)

  end
end
