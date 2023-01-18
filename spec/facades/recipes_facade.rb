
require 'rails_helper'

RSpec.describe RecipesFacade do
  it 'exists' ,:vcr do
    recipe_facade = RecipesFacade.new
    expect(recipe_facade).to be_an_instance_of(RecipesFacade)
  end
  describe 'Class Methods' do
    describe '.get_recipes' ,:vcr do
      it 'should ' do
        recipes = RecipesFacade.get_recipes("mexico")
        expect(recipes).to be_an Array
        expect(recipes.first).to be_an_instance_of(Recipe)

        expect(recipes.first.country).to eq("mexico")
        expect(recipes.first.title).to eq("Avocado from Mexico, Orange and Watercress Salad. Adapted from Chef Richard Sandoval, New York, Mexico and Dubai")
        expect(recipes.first.url).to eq("https://food52.com/recipes/5794-avocado-from-mexico-orange-and-watercress-salad-adapted-from-chef-richard-sandoval-new-york-mexico-and-dubai")

      end
    end
    it 'returns an empty array if country has no recipes', :vcr do
      recipes = RecipesFacade.get_recipes("Equatorial Guinea")

      expect(recipes).to be_an Array
      expect(recipes[0]).to_not be_an_instance_of(Recipe)

      expect(recipes).to eq([])

    end
  end
end
