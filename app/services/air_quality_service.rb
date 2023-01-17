class AirQualityService

def self.conn
  Faraday.new(url: 'http://api.openweathermap.org') do |f|
    f.params['appid'] = ENV['weather_key']
  end
end

def self.get_info(lat, long)
  response = conn.get("/data/2.5/air_pollution?lat=#{lat}&lon=#{long}")
  x = JSON.parse(response.body, symbolize_names: true)
  binding.pry
  end
end
