require "rails_helper"


RSpec.describe Recipe do
  it 'create a Recipe poro based on attribute' do
    country = "Mexico"
    data = {:recipe=>
              {:url=>"https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
            :label=>"Avocado from Mexico, Orange and Watercress Salad. Adapted from Chef Richard Sandoval, New York, Mexico and Dubai",
            :image=>"https://edamam-product-images.s3.amazonaws.com/web-img/7a0/7a0ce2ee688b9534b92257c4c1f13b95.JPG?X-Amz-Security-Token=IQoJb3JpZ2luX2VjELv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDfy1fc5yPhrZpY8ClkP3jWKwh4N42oWn7Yt6JBLA2H6gIhALCwzeruBLeaIpS%2Bx96O%2FQC6J%2BlNM6EWnFpyFB8DbIYdKswECCQQABoMMTg3MDE3MTUwOTg2IgxYpW%2FqanK9xMZqeWMqqQQpRfPMr1Jeo3Pm8ea8P77uQ86iTECDSloKdqV5Y%2FW3FlDeqU1W5K045n%2Ba5Tv"
    }
    }


    recipe = Recipe.new(data,country)
    binding.pry
    expect(recipe).to be_an_instance_of(Recipe)
    expect(recipe.id).to eq(nil)
    expect(recipe.image).to eq("https://edamam-product-images.s3.amazonaws.com/web-img/7a0/7a0ce2ee688b9534b92257c4c1f13b95.JPG?X-Amz-Security-Token=IQoJb3JpZ2luX2VjELv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDfy1fc5yPhrZpY8ClkP3jWKwh4N42oWn7Yt6JBLA2H6gIhALCwzeruBLeaIpS%2Bx96O%2FQC6J%2BlNM6EWnFpyFB8DbIYdKswECCQQABoMMTg3MDE3MTUwOTg2IgxYpW%2FqanK9xMZqeWMqqQQpRfPMr1Jeo3Pm8ea8P77uQ86iTECDSloKdqV5Y%2FW3FlDeqU1W5K045n%2Ba5Tv")
    expect(recipe.title).to eq("Avocado from Mexico, Orange and Watercress Salad. Adapted from Chef Richard Sandoval, New York, Mexico and Dubai",)
    expect(recipe.url).to eq("https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html")
    end
  end