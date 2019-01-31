require 'json'
require 'httparty'

class FiveDay

  include HTTParty

  base_uri 'http://api.openweathermap.org'

  def five_day_request_by_name(city_name)
    weather_key = '5f665a87a58fb70f8412f3a160995328'
    @five_day_request = JSON.parse(self.class.get("/data/2.5/forecast?q=#{city_name}&APPID=#{weather_key}").body)
  end

  def five_day_request_by_id(id)
    weather_key = '5f665a87a58fb70f8412f3a160995328'
    @five_day_request = JSON.parse(self.class.get("/data/2.5/forecast?id=#{id}&APPID=#{weather_key}").body)
  end

  def retrieve_five_day_results 
    @five_day_request
  end

  def retrieve_cod
    @five_day_request['cod']
  end

  def retrieve_message
    @five_day_request['message']
  end

  def retrieve_cnt
    @five_day_request['cnt']
  end

  def retrieve_list
    @five_day_request['list']
  end

  def retrieve_dt_loop
    
    dt_loop = []
    retrieve_list.each do |duck|
      dt_loop.push duck['dt']
    end
    dt_loop
  end

end

# test = FiveDay.new
# puts test.five_day_request_by_name('London')
# puts test.five_day_request_by_id('3632308')

test = FiveDay.new
test.five_day_request_by_name('London')
p test.retrieve_dt_loop