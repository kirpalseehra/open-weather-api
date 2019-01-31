require 'json'
require 'httparty'

class CurrentWeather

  include HTTParty

  base_uri 'http://api.openweathermap.org'

  def current_weather_request_by_name(city_name, api_key)
    @single_weather_request_by_name = JSON.parse(self.class.get("/data/2.5/weather?q=#{city_name}&APPID=#{api_key}").body)
  end

  def current_weather_request_by_id(id, api_key)
    @single_weather_request_by_name = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}&APPID=#{api_key}").body)
  end


end

# test = CurrentWeather.new
# p test.current_weather_request_by_name('Kathmandu','5f665a87a58fb70f8412f3a160995328')

# test = CurrentWeather.new
# puts test.current_weather_request_by_id('3632308', '5f665a87a58fb70f8412f3a160995328')