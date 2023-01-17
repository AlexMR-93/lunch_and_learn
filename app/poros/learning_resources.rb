class LearningResources

  def initialize(youtube,unsplash)
    @id = youtube.first.id
    @country = youtube.first.country
    @title = youtube.first.title
    @video_id = youtube.first.video_id
    @alt_tag = unsplash.first.alt_tag
    @url = unsplash.first.url
  end
end