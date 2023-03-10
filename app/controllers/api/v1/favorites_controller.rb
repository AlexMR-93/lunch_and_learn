class Api::V1::FavoritesController < ApplicationController

  def create

    if !existing_user.nil?
      existing_user.favorites.create!(favorite_params)
      existing_user.save
      render json: {success: "Favorite added successfully"}, status: 201
    else
      render json: {error: "Bad Request. Api keys do not match."}, status: 404
    end
  end
  def index
    if !existing_user.nil?
    render json: FavoriteSerializer.new(existing_user.favorites)
    else
      render json: {error: "Bad Request. User Not Valid."}, status: 404
    end
  end


  private

  def existing_user
    User.find_by(api_key: params[:api_key])
  end
    def favorite_params
    params.permit(:country, :recipe_link, :recipe_title, :created_at)
    end
  end

