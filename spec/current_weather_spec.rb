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



  





  end

end