class AirQuality
  attr_reader :aqi, :dt
  def initialize(data)
    @aqi = data[:main][:aqi]
    @dt = data[:dt]
  end

  # #def aqi_chart
  #
  #   if @aqi = 1 == "Good"
  #   elsif @aqi = 2 == "Fair"
  #   elsif @aqi = 3== "Moderate"
  #   elsif  @aqi = 4 == "Poor"
  #   else
  #     @aqi = 5 == "Very Poor"
  #     end
  #   end
  # end
  end

