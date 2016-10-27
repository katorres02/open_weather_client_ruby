module OpenWeather
  API_KEY = 'ENV['API_KEY']'
  CITY = 'Atlanta'
  COUNTRY = 'us'
end

require_relative 'manager'
require_relative 'current'
require_relative 'weather'
require_relative 'forecast'
