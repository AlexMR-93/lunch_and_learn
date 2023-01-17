class CountryService


  def self.conn
    Faraday.new("https://restcountries.com")
  end
  def self.get_all_countries
    response = conn.get("/v3.1/all")
   JSON.parse(response.body,symbolize_names: true)
  end
  def self.one_country(name)
    response = conn.get("/v3.1/name/#{name}")
    x = JSON.parse(response.body, symbolize_names: true).first
    binding.pry
  end
end