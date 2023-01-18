class YoutubeFacade

  def self.get_videos(country)

    data = YoutubeService.video_location(country)
    data[:items].map do |hash|
      Youtube.new(hash)
    end
  end
end