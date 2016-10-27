require './open_weather/open_weather'

# Current
puts OpenWeather::Current.weather.inspect
puts OpenWeather::Current.speed

# Forecast 5 days
temps = OpenWeather::Forecast.weathers
puts temps[0].inspect
puts temps[1].inspect
puts temps[1].humidity


