class Country
  attr_reader :name, :lat ,:long
  def initialize(data)
    @name = data[:name][:common]
    @lat = data[:latlng].first
    @long = data[:latlng].last
  end
end