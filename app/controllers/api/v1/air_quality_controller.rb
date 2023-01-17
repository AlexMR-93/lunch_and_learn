class Api::V1::AirQualityController < ApplicationController
  def show
  result = CountryFacade.get_country_pick(params[:country]).first
  end
end
