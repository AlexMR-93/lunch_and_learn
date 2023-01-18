class Api::V1::FavoritesController < ApplicationController

  def create

    if !existing_user.nil?
      existing_user.favorites.create!(favorite_params)
      render json: {success: "Favorite added successfully"}, status: 201
    else
      render json: {error: "Bad Request. User Not Valid."}, status: 404
    end
  end
  def index
    binding.pry
  end
  private

  def existing_user
    User.find_by(api_key: params[:api_key])
  end
    def favorite_params
    params.permit(:country, :recipe_link, :recipe_title)
    end
  end

