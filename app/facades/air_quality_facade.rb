class AirQualityFacade

  def self.get_air(country)
    lat = CountryFacade.get_country_pick(country).first.lat
    long = CountryFacade.get_country_pick(country).first.long
    air = AirQualityService.get_info(lat,long)
    air[:list].map do |a|
      AirQuality.new(a)
    end
    end
  end
