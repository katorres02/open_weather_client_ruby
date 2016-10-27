# open_weather_client_ruby

## Still in progress

For now returns the current weather and the forecast 5 days info from Atlanta,US.

```ruby
require 'open_weather'
```

Current weather:
```ruby
OpenWeather::Current.weather
```
Forecast:
```ruby
OpenWeather::Forecast.weathers
```

Override City and Country by changing
```ruby
module OpenWeather
  CITY = 'New City name'
  COUNTRY = 'New Country (us, uk, co)'
end
```
