class RecipesFacade

  def self.get_recipes(country)

    data = RecipesService.recipes_loc(country)
    data[:hits].map{|recipe|Recipe.new(recipe,country)}
  end
end