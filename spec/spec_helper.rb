require 'rspec'
require 'dotenv'
require_relative '../lib/services/current_weather'
require_relative '../lib/services/five_day'

# loading the .env file into the environment of rspec using the API key 
Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end

