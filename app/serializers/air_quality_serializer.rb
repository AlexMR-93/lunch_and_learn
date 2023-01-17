class AirQualitySerializer
  include JSONAPI::Serializer
  set_id {nil}
  attributes  :aqi, :dt

end
