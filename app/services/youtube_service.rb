class YoutubeService

  def self.conn
    Faraday.new("https://youtube.googleapis.com")do |req|
      req.params[:key] = ENV['youtube_api_key']
    end
  end
  def self.video_location(country)
    response = conn.get("/youtube/v3/search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&maxResults=1&q=#{country}")
    JSON.parse(response.body,symbolize_names: true)
  end
end
