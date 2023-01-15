class Api::V1::RecipesController < ApplicationController

  def index
    recipes = RecipesFacade.get_recipes(params[:country])
    binding.pry
    render json: RecipesSerializer.new(recipes)
  end
end