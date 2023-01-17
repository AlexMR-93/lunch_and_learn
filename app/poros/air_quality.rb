class AirQuality
  attr_reader :aqi, :dt, :readable
  def initialize(data)
    @aqi = data[:main][:aqi]
    @dt = data[:dt]
    @readable = aqi_chart
  end
  def aqi_chart

   if @aqi == 1
        "Good"
      elsif @aqi == 2
        "Fair"
      elsif @aqi === 3
        "Moderate"
      elsif @aqi == 4
        "Poor"
      else
        "Very Poor"
      end
    end
  end

