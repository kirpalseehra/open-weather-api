
require 'json'
require 'httparty'

class FiveDay

  include HTTParty

  base_uri 'http://api.openweathermap.org'

  def five_day_request_by_name(city_name)
    weather_key = '5f665a87a58fb70f8412f3a160995328'
    @single_weather_request_by_name = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city_name}&APPID=#{weather_key}").body)
  end

  def five_day_request_by_id(id)
    weather_key = '5f665a87a58fb70f8412f3a160995328'
    @single_weather_request_by_name = JSON.parse(self.class.get("/data/2.5/forecast?id=#{id}&APPID=#{weather_key}").body)
  end

end

# test = FiveDay.new
# puts test.five_day_request_by_name('London')
# puts test.five_day_request_by_id('3632308')