class RecipesService

def self.conn
  Faraday.new("https://api.edamam.com")do |req|
    req.params[:app_id] = ENV['edmam_app_id']
    req.params[:app_key] = ENV['edamam_api_key']
  end
end
def self.recipes_loc(country)
  response = conn.get("/api/recipes/v2?type=public&q=#{country}")
  JSON.parse(response.body,symbolize_names: true)
  end
end
