class Api::V1::LearningResourcesController < ApplicationController
  def show
    if (params[:country]).present?
    youtube = YoutubeFacade.get_videos(params[:country])
    unsplash = UnsplashFacade.get_images(params[:country])
    all_in_one = LearningResources.new(youtube,unsplash,params[:country])
    render json: LearningResourcesSerializer.new(all_in_one)
    else
      poop =LearningResources.new({},[],(params[:country]))
      render json: LearningResourcesSerializer.new(poop)
    end
  end
end

