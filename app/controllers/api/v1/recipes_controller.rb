class Api::V1::RecipesController < ApplicationController

  def index
    #country = CountryFacade.random_c
    recipes = RecipesFacade.get_recipes(params[:country])
    #render json: RecipesSerializer.new(recipes)
  end
end