require 'json'
require 'httparty'
require 'dotenv'
Dotenv.load('../../.env')

class CurrentWeather

  include HTTParty

  # include the base open weather map uri
  base_uri 'http://api.openweathermap.org'

  def current_weather_request_by_name(city_name)
    weather_key = '5f665a87a58fb70f8412f3a160995328'
    @single_weather_request = JSON.parse(self.class.get("/data/2.5/weather?q=#{city_name}&APPID=#{weather_key}").body)
  end

  def current_weather_request_by_id(id)
    weather_key = '5f665a87a58fb70f8412f3a160995328'
    @single_weather_request = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}&APPID=#{weather_key}").body)  
  end

  def retrieve_results
    @single_weather_request
  end

  def retrieve_coordinates 
    @single_weather_request['coord']
  end

  def retrieve_longitude
    retrieve_coordinates['lon']
  end

  def retrieve_latitude
    retrieve_coordinates['lat']
  end

  def retrieve_weather_array
    @single_weather_request['weather']
  end

  def retrieve_elements_in_array
    retrieve_weather_array[0]
  end

  def retrieve_weather_id
    retrieve_elements_in_array['id']
  end

  def retrieve_weather_main
    retrieve_elements_in_array['main']
  end

  def retrieve_weather_description
    retrieve_elements_in_array['description']
  end

  def retrieve_weather_icon
    retrieve_elements_in_array['icon']
  end

  def retrieve_base
    @single_weather_request['base']
  end

  def retrieve_main
    @single_weather_request['main']
  end

  def retrieve_main_temp
    retrieve_main['temp']
  end

  def retrieve_main_pressure
    retrieve_main['pressure']
  end

  def retrieve_main_humidity
    retrieve_main['humidity']
  end

  def retrieve_main_temp_min
    retrieve_main['temp_min']
  end

  def retrieve_main_temp_max
    retrieve_main['temp_max']
  end

  def retrieve_visibility
    @single_weather_request['visibility']
  end

  def retrieve_wind
    @single_weather_request['wind']
  end

  def retrieve_wind_speed
    retrieve_wind['speed']
  end

  def retrieve_wind_degree
    retrieve_wind['deg']
  end

  def retrieve_clouds
    @single_weather_request['clouds']
  end

  def retrieve_clouds_all
    retrieve_clouds['all']
  end

  def retrieve_dt 
    @single_weather_request['dt']
  end

  def retrieve_sys
    @single_weather_request['sys']
  end

  def retrieve_sys_type
    retrieve_main['type']
  end

  def retrieve_sys_id
    retrieve_main['id']
  end

  def retrieve_sys_message
    retrieve_main['message']
  end

  def retrieve_sys_country
    retrieve_main['country']
  end

  def retrieve_sys_sunrise
    retrieve_main['sunrise']
  end

  def retrieve_sys_sunset
    retrieve_main['sunset']
  end

  def retrieve_id 
    @single_weather_request['id']
  end

  def retrieve_name 
    @single_weather_request['name']
  end

  def retrieve_cod 
    @single_weather_request['cod']
  end


end

# test = CurrentWeather.new
# puts test.current_weather_request_by_name('London')
# puts test.current_weather_request_by_id('3632308')

test = CurrentWeather.new
test.current_weather_request_by_name('London')
puts test.retrieve_clouds_all

