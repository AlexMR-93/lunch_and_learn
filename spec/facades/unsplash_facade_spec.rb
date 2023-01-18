require 'rails_helper'

RSpec.describe UnsplashFacade do
  it 'creates a total of 10 image objects of country', :vcr do
    images = UnsplashFacade.get_images("mexico")
    expect(images).to be_an Array
    expect(images.count).to be <= 10
    expect(images.first).to be_an_instance_of Unsplash
    expect(images.first.alt_tag).to eq("low angle photo of temple")
    expect(images.first.url).to eq("https://images.unsplash.com/photo-1512813195386-6cf811ad3542?ixid=MnwzOTk4MzJ8MHwxfHNlYXJjaHwxfHxtZXhpY298ZW58MHx8fHwxNjc0MDAwNTQ2&ixlib=rb-4.0.3")
  end
  it 'if no images were found return empty array', :vcr do
    images = UnsplashFacade.get_images("WAAAAAAAAHHHHHH")
    expect(images).to eq([])
  end
end

