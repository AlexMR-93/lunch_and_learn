require 'rails_helper'

RSpec.describe RecipesService do
  it '.' do
    response = RecipesService.
    expect(response).to be_a Array
    expect(response.first).to be_a Hash

  end
end
