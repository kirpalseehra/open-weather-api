require 'spec_helper'

describe Weather do

  context 'Tests for five day forecast by name ' do

    before(:all) do
      @five_day_service = Weather.new.five_day_service
      @five_day_service.five_day_request_by_name('London')
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

    it 'should return all the dt elements in the array' do
      @five_day_service.retrieve_dt_loop.each do |duck|
        expect(duck).to be_kind_of(Integer)
      end
    end







  end

end