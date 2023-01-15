class CountryFacade

  def self.random_country
  data = CountryService.get_all_countries
  data.map do |all_c|
    Country.new(all_c)
    end
  end
    def self.random_c
      random_c = CountryFacade.random_country
      random_c.sample
    end
end