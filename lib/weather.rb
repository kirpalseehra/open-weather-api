require_relative 'services/current_weather'
require_relative 'services/five_day'

class Weather

  def current_weather_service
    CurrentWeather.new
  end

  def five_day_service
    FiveDay.new
  end

end

@weather_api = Weather.new
puts @weather_api.current_weather_service.current_weather_request_by_name('London')