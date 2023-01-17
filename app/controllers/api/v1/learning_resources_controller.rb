class Api::V1::LearningResourcesController < ApplicationController
  def show
    x = YoutubeFacade.get_videos(params[:country])
    y = UnsplashFacade.get_images(params[:country])
    testing = LearningResources.new(x,y)
    LearningResourcesSerializer.new(testing)

  end
end