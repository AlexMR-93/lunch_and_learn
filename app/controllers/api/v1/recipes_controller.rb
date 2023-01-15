class Api::V1::RecipesController < ApplicationController

  def index

    country = CountryFacade.randoo
    #recipes = RecipesFacade.get_recipes(country)
    #render json: RecipesSerializer.new(recipes)
  end
end