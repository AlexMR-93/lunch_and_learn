class CountryService


  def self.conn
    Faraday.new("https://restcountries.com")
  end
  def self.find_country(country)
    response = conn.get("/v3.1/name/#{country}")
    x = JSON.parse(response.body,symbolize_names: true)
  end
end