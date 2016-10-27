module OpenWeather
  API_KEY = '29583c9be58c2a1b546d2cadc4c193b5'
  CITY = 'Atlanta'
  COUNTRY = 'us'
end

require_relative 'manager'
require_relative 'current'
require_relative 'weather'
require_relative 'forecast'