class RecipesFacade

  def self.get_recipes(country)
    data = RecipesService.recipes_loc(country)
    recipes = data[:hits].map do |recipe|
      Recipe.new(recipe,country)

    end
  end
end