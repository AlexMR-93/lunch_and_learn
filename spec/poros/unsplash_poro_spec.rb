require 'rails_helper'

RSpec.describe Unsplash, type: :poros do
  describe 'it returns image objects'do
    it 'response has defined attributes', :vcr do
      images = UnsplashFacade.get_images("mexico")
      expect(images). to be_an Array
      expect(images.first.alt_tag).to be_a String
      expect(images.first.url).to be_a String

    end
  end
end