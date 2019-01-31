

require 'json'
require 'httparty'

class FiveDay

  include HTTParty

  base_uri 'http://api.openweathermap.org'

  def five_day_request_by_name(city_name, api_key)
    @single_weather_request_by_name = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city_name}&APPID=#{api_key}").body)
  end

  def five_day_request_by_id(id, api_key)
    @single_weather_request_by_name = JSON.parse(self.class.get("/data/2.5/forecast?id=#{id}&APPID=#{api_key}").body)
  end


end

test = FiveDay.new
# puts test.five_day_request_by_name('London', '5f665a87a58fb70f8412f3a160995328')
puts test.five_day_request_by_id('3632308','5f665a87a58fb70f8412f3a160995328')