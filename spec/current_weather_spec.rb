require 'spec_helper'

describe Weather do

  context 'Tests for current weather by name' do

    before(:all) do
      @current_weather_service = Weather.new.current_weather_service
      @current_weather_service.current_weather_request_by_name('London')
    end

    it 'should return the results as a Hash' do
      expect(@current_weather_service.retrieve_results).to be_kind_of(Hash)
    end

    it 'should return the co-ordinates as a Hash' do
      expect(@current_weather_service.retrieve_coordinates).to be_kind_of(Hash)
    end

    it 'should return the longitude as a Float' do
      expect(@current_weather_service.retrieve_longitude).to be_kind_of(Float)
    end

    it 'should return the longitude as a Float' do
      expect(@current_weather_service.retrieve_latitude).to be_kind_of(Float)
    end

    it 'should return the weather results as an Array' do
      expect(@current_weather_service.retrieve_weather_array).to be_kind_of(Array)
    end

    it 'should return all the elements in the array as Hash' do
      expect(@current_weather_service.retrieve_elements_in_array).to be_kind_of(Hash)
    end

    it 'should return the id as an Integer' do
      expect(@current_weather_service.retrieve_weather_id).to be_kind_of(Integer)
    end

    it 'should return the main as a String' do
      expect(@current_weather_service.retrieve_weather_main).to be_kind_of(String)
    end

    it 'should return the description as a String' do
      expect(@current_weather_service.retrieve_weather_description).to be_kind_of(String)
    end

    it 'should return the icon as a String' do
      expect(@current_weather_service.retrieve_weather_icon).to be_kind_of(String)
    end

    it 'should return the base as a String' do
      expect(@current_weather_service.retrieve_base).to be_kind_of(String)
    end

    it 'should return the main as a Hash' do
      expect(@current_weather_service.retrieve_main).to be_kind_of(Hash)
    end

    it 'should return the main temp as a Float' do
      expect(@current_weather_service.retrieve_main_temp).to be_kind_of(Float)
    end


    it 'should return the main pressure as an Integer' do
      expect(@current_weather_service.retrieve_main_pressure).to be_kind_of(Integer)
    end


    it 'should return the main humidity as an Integer' do
      expect(@current_weather_service.retrieve_main_humidity).to be_kind_of(Integer)
    end


    it 'should return the main minimum temperature as a Float' do
      expect(@current_weather_service.retrieve_main_temp_min).to be_kind_of(Float)
    end


    it 'should return the main maximum temperature as a Float' do
      expect(@current_weather_service.retrieve_main_temp_max).to be_kind_of(Float)
    end

    it 'should return the visibility as an Integer' do
      expect(@current_weather_service.retrieve_visibility).to be_kind_of(Integer)
    end 

    it 'should return the wind as a Hash' do
      expect(@current_weather_service.retrieve_wind).to be_kind_of(Hash)
    end 

    it 'should return the wind speed as a Float' do
      expect(@current_weather_service.retrieve_wind_speed).to be_kind_of(Float)
    end 

    it 'should return the wind degree as an Integer' do
      expect(@current_weather_service.retrieve_wind_degree).to be_kind_of(Integer)
    end 

    it 'should return the clouds as a Hash' do
      expect(@current_weather_service.retrieve_clouds).to be_kind_of(Hash)
    end

    it 'should return the clouds all as an Integer' do
      expect(@current_weather_service.retrieve_clouds_all).to be_kind_of(Integer)
    end

    it 'should return the dt as an Integer' do
      expect(@current_weather_service.retrieve_dt).to be_kind_of(Integer)
    end

    it 'should return the sys as a Hash' do
      expect(@current_weather_service.retrieve_sys).to be_kind_of(Hash)
    end

    it 'should return the sys type as a Integer' do
      expect(@current_weather_service.retrieve_sys_type).to be_kind_of(Integer) | be_nil
    end

    it 'should return the sys id as a Integer' do
      expect(@current_weather_service.retrieve_sys_id).to be_kind_of(Integer) | be_nil
    end

    it 'should return the sys message as a Float' do
      expect(@current_weather_service.retrieve_sys_message).to be_kind_of(Float) | be_nil
    end

    it 'should return the sys country as a String' do
      expect(@current_weather_service.retrieve_sys_country).to be_kind_of(String) | be_nil
    end

    it 'should return the sys sunrise as an Integer' do
      expect(@current_weather_service.retrieve_sys_sunrise).to be_kind_of(Integer) | be_nil
    end

    it 'should return the sys sunset as an Integer' do
      expect(@current_weather_service.retrieve_sys_sunset).to be_kind_of(Integer) | be_nil
    end

    it 'should return the id as an Integer' do
      expect(@current_weather_service.retrieve_id).to be_kind_of(Integer)
    end

    it 'should return the name as an String' do
      expect(@current_weather_service.retrieve_name).to be_kind_of(String) 
    end

    it 'should return the cod as an Integer' do
      expect(@current_weather_service.retrieve_cod).to be_kind_of(Integer) 
    end
  end

  context 'Tests for current weather by id' do

    before(:all) do
      @current_weather_service = Weather.new.current_weather_service
      @current_weather_service.current_weather_request_by_id('3632308')
    end

    it 'should return the results as a Hash' do
      expect(@current_weather_service.retrieve_results).to be_kind_of(Hash)
    end

    it 'should return the co-ordinates as a Hash' do
      expect(@current_weather_service.retrieve_coordinates).to be_kind_of(Hash)
    end

    it 'should return the longitude as a Float' do
      expect(@current_weather_service.retrieve_longitude).to be_kind_of(Float)
    end

    it 'should return the longitude as a Float' do
      expect(@current_weather_service.retrieve_latitude).to be_kind_of(Float)
    end

    it 'should return the weather results as an Array' do
      expect(@current_weather_service.retrieve_weather_array).to be_kind_of(Array)
    end

    it 'should return all the elements in the array as Hash' do
      expect(@current_weather_service.retrieve_elements_in_array).to be_kind_of(Hash)
    end

    it 'should return the id as an Integer' do
      expect(@current_weather_service.retrieve_weather_id).to be_kind_of(Integer)
    end

    it 'should return the main as a String' do
      expect(@current_weather_service.retrieve_weather_main).to be_kind_of(String)
    end

    it 'should return the description as a String' do
      expect(@current_weather_service.retrieve_weather_description).to be_kind_of(String)
    end

    it 'should return the icon as a String' do
      expect(@current_weather_service.retrieve_weather_icon).to be_kind_of(String)
    end

    it 'should return the base as a String' do
      expect(@current_weather_service.retrieve_base).to be_kind_of(String)
    end

    it 'should return the main as a Hash' do
      expect(@current_weather_service.retrieve_main).to be_kind_of(Hash)
    end

    it 'should return the main temp as a Float' do
      expect(@current_weather_service.retrieve_main_temp).to be_kind_of(Float)
    end


    it 'should return the main pressure as an Integer' do
      expect(@current_weather_service.retrieve_main_pressure).to be_kind_of(Integer) | be_kind_of(Float)
    end


    it 'should return the main humidity as an Integer' do
      expect(@current_weather_service.retrieve_main_humidity).to be_kind_of(Integer)
    end


    it 'should return the main minimum temperature as a Float' do
      expect(@current_weather_service.retrieve_main_temp_min).to be_kind_of(Float)
    end


    it 'should return the main maximum temperature as a Float' do
      expect(@current_weather_service.retrieve_main_temp_max).to be_kind_of(Float)
    end

    it 'should return the visibility as an Integer' do
      expect(@current_weather_service.retrieve_visibility).to be_kind_of(Integer) | be_nil
    end 

    it 'should return the wind as a Hash' do
      expect(@current_weather_service.retrieve_wind).to be_kind_of(Hash)
    end 

    it 'should return the wind speed as a Float' do
      expect(@current_weather_service.retrieve_wind_speed).to be_kind_of(Float)
    end 

    it 'should return the wind degree as an Integer' do
      expect(@current_weather_service.retrieve_wind_degree).to be_kind_of(Integer) | be_kind_of(Float)
    end 

    it 'should return the clouds as a Hash' do
      expect(@current_weather_service.retrieve_clouds).to be_kind_of(Hash)
    end

    it 'should return the clouds all as an Integer' do
      expect(@current_weather_service.retrieve_clouds_all).to be_kind_of(Integer)
    end

    it 'should return the dt as an Integer' do
      expect(@current_weather_service.retrieve_dt).to be_kind_of(Integer)
    end

    it 'should return the sys as a Hash' do
      expect(@current_weather_service.retrieve_sys).to be_kind_of(Hash)
    end

    it 'should return the sys type as a Integer' do
      expect(@current_weather_service.retrieve_sys_type).to be_kind_of(Integer) | be_nil
    end

    it 'should return the sys id as a Integer' do
      expect(@current_weather_service.retrieve_sys_id).to be_kind_of(Integer) | be_nil
    end

    it 'should return the sys message as a Float' do
      expect(@current_weather_service.retrieve_sys_message).to be_kind_of(Float) | be_nil
    end

    it 'should return the sys country as a String' do
      expect(@current_weather_service.retrieve_sys_country).to be_kind_of(String) | be_nil
    end

    it 'should return the sys sunrise as an Integer' do
      expect(@current_weather_service.retrieve_sys_sunrise).to be_kind_of(Integer) | be_nil
    end

    it 'should return the sys sunset as an Integer' do
      expect(@current_weather_service.retrieve_sys_sunset).to be_kind_of(Integer) | be_nil
    end

    it 'should return the id as an Integer' do
      expect(@current_weather_service.retrieve_id).to be_kind_of(Integer)
    end

    it 'should return the name as an String' do
      expect(@current_weather_service.retrieve_name).to be_kind_of(String) 
    end

    it 'should return the cod as an Integer' do
      expect(@current_weather_service.retrieve_cod).to be_kind_of(Integer) 
    end
  end

end