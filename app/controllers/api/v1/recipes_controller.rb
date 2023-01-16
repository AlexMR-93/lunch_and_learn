class Api::V1::RecipesController < ApplicationController

  def index
    if  params[:country].present?
    recipes = RecipesFacade.get_recipes(params[:country])
    render json: RecipesSerializer.new(recipes)
    elsif !params[:country]
      randomly_pick_country = CountryFacade.random_c
      recipes = RecipesFacade.get_recipes(randomly_pick_country.name)
      render json: RecipesSerializer.new(recipes)
    end
  end
  end