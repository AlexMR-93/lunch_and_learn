class LearningResources
  attr_reader :video, :images,:country
  def initialize(youtube,unsplash,country)
    @video = youtube.first
    @images = unsplash
    @country = country
    @title = youtube

  end
end