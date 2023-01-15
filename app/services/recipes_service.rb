class EdamamService


  def self.conn
    Faraday.new("https://api.edamam.com")
  end
  def self.recipes_loc(country)
    response = conn.get("/v3.1/name/#{country}")
    data = JSON.parse(response.body,symbolize_names: true)

  end
end