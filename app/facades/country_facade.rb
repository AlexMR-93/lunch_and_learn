class CountryFacade

  def self.random_country
  data = CountryService.get_all_countries
  data.map do |all_c|
    Country.new(all_c)
    end
  end
    def self.random_c
      CountryFacade.random_country.sample
    end
  def self.get_country_pick(name)
    CountryService.one_country(name)

    binding.pry
    end
  end
