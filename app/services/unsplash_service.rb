class UnsplashService

  def self.conn
    Faraday.new("https://api.unsplash.com")do |req|
      req.params[:client_id] = ENV['unsplash_api_key']
    end
  end
  def self.find_pics(country)
    response = conn.get("/search/photos?per_page=10&query=#{country}")
    JSON.parse(response.body,symbolize_names: true)
  end
end
