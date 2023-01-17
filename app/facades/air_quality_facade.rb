class AirQualityFacade

  def self.get_air(country)
    lat = CountryFacade.get_country_pick(country).first.lat
    binding.pry
    long = CountryFacade.get_country_pick(country).first.long
    AirQualityService.get_info(lat,long)
    end
  end
