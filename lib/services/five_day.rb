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

  def retrieve_main_loop
    main_loop = []
    retrieve_list.each do |duck|
      main_loop.push duck['main']
    end
    main_loop
  end

  def retrieve_main_temp_loop
    main_temp_loop = []
    retrieve_main_loop.each do |duck|
      main_temp_loop.push duck['temp']
    end
    main_temp_loop
  end

  def retrieve_main_temp_min_loop
    main_temp_min_loop = []
    retrieve_main_loop.each do |duck|
      main_temp_min_loop.push duck['temp_min']
    end
    main_temp_min_loop
  end

  def retrieve_main_temp_max_loop
    main_temp_max_loop = []
    retrieve_main_loop.each do |duck|
      main_temp_max_loop.push duck['temp_max']
    end
    main_temp_max_loop
  end

  def retrieve_main_pressure_loop
    main_pressure_loop = []
    retrieve_main_loop.each do |duck|
      main_pressure_loop.push duck['pressure']
    end
    main_pressure_loop
  end

  def retrieve_main_sea_level_loop
    main_sea_level_loop = []
    retrieve_main_loop.each do |duck|
      main_sea_level_loop.push duck['sea_level']
    end
    main_sea_level_loop
  end

  def retrieve_main_ground_level_loop
    main_ground_level_loop = []
    retrieve_main_loop.each do |duck|
      main_ground_level_loop.push duck['grnd_level']
    end
    main_ground_level_loop
  end

  def retrieve_main_humidity_loop
    main_humidity_loop = []
    retrieve_main_loop.each do |duck|
      main_humidity_loop.push duck['humidity']
    end
    main_humidity_loop
  end

  def retrieve_main_temp_kf_loop
    main_temp_kf_loop = []
    retrieve_main_loop.each do |duck|
      main_temp_kf_loop.push duck['temp_kf']
    end
    main_temp_kf_loop
  end

end