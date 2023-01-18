class Unsplash
  attr_reader :alt_tag, :url, :country
  def initialize(data,country)
    @alt_tag = data[:alt_description]
    @url = data[:urls][:raw]
    @country = country

  end
end