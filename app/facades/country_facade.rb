class CountryFacade

  def self.random_country
  data = CountryService.get_all_countries
  data.map do |all_c|
    Country.new(all_c)
    en

    def self.randoo
      rando = CountryService.random_country
      rando.sample
    end
end