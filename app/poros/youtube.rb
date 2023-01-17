class Youtube

  attr_reader :id,:video_id,:title,:country

  def initialize(data,country)
    @id = nil
    @video_id = data[:id][:videoId]
    @title = data[:snippet][:title]
    @country = country
  end
end
