require 'json'
require 'httparty'

class CurrentWeather

  include HTTParty

  base_uri 'http://api.openweathermap.org'

  def current_weather_request(city_name, api_key)
    @single_weather_request = JSON.parse(self.class.get("/data/2.5/weather?id=#{city_name}&APPID=#{api_key}").body)

  end
end

test = CurrentWeather.new
p test.current_weather_request('2648110','5f665a87a58fb70f8412f3a160995328')