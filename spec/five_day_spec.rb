require 'spec_helper'

describe Weather do

  context 'Tests for five day forecast by name ' do

    before(:all) do
      @weather_key = ENV['API_KEY']
      @five_day_service = Weather.new.five_day_service
      @five_day_service.five_day_request_by_name('London', @weather_key)
    end


    it 'should return the entire five day results as a Hash' do
      expect(@five_day_service.retrieve_five_day_results).to be_kind_of(Hash)
    end

    it 'should return the cod as an Integer' do
      expect(@five_day_service.retrieve_cod).to be_kind_of(String)
    end

    it 'should return the message as a String' do
      expect(@five_day_service.retrieve_message).to be_kind_of(Float)
    end

    it 'should return the entire five day results as a Hash' do
      expect(@five_day_service.retrieve_cnt).to be_kind_of(Integer)
    end

    it 'should return the list as an array' do
      expect(@five_day_service.retrieve_list).to be_kind_of(Array)
    end

    it 'should return all the dt elements as an Integer' do
      @five_day_service.retrieve_dt_loop.each do |duck|
        expect(duck).to be_kind_of(Integer)
      end
    end

    it 'should return all the main elements as a Hash' do
      @five_day_service.retrieve_main_loop.each do |duck|
        expect(duck).to be_kind_of(Hash)
      end
    end

    it 'should return all the main temp elements as a Float' do
      @five_day_service.retrieve_main_temp_loop.each do |duck|
        expect(duck).to be_kind_of(Float)
      end
    end

    it 'should return all the main temp min elements as a Float' do
      @five_day_service.retrieve_main_temp_min_loop.each do |duck|
        expect(duck).to be_kind_of(Float)
      end
    end

    it 'should return all the main temp max elements as a Float' do
      @five_day_service.retrieve_main_temp_max_loop.each do |duck|
        expect(duck).to be_kind_of(Float)
      end
    end

    it 'should return all the main pressure elements as a Float' do
      @five_day_service.retrieve_main_pressure_loop.each do |duck|
        expect(duck).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the main sea level elements as a Float' do
      @five_day_service.retrieve_main_sea_level_loop.each do |duck|
        expect(duck).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the main ground level elements as a Float' do
      @five_day_service.retrieve_main_ground_level_loop.each do |duck|
        expect(duck).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the main humidity elements as a Float' do
      @five_day_service.retrieve_main_humidity_loop.each do |duck|
        expect(duck).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end

    it 'should return all the main temp kf elements as a Float' do
      @five_day_service.retrieve_main_temp_kf_loop.each do |duck|
        expect(duck).to be_kind_of(Float) | be_kind_of(Integer)
      end
    end
    
  end

end