class RecipesFacade

  def self.get_recipes(country)
    data = EdamamService.recipes_loc(country)
    binding.pry
  end
end