class CountryFacade

  def self.pick_country(country)
  data = CountryService.find_country(country)
  country_loc = data.first[:name][:common]

  end
end