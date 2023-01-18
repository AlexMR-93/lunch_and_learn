class UnsplashFacade

  def self.get_images(country)

    data = UnsplashService.find_pics(country)
    data[:results].map { |pic_info| Unsplash.new(pic_info,country)  }

    end
  end
