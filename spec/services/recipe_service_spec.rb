require 'rails_helper'

RSpec.describe RecipesService do
  it '.get_recipes' do
    response = RecipesService.recipes_loc("Mexico")
    expect(response).to be_a Hash
    expect(response).to have_key :from
    expect(response[:from]).to eq 1
    expect(response[:hits]).to be_a Array
    expect(response[:hits].first[:recipe]).to be_a Hash
    expect(response[:hits].first[:recipe][:uri]).to be_a(String)



  end
end
