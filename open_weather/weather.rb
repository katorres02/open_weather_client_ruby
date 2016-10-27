module OpenWeather
  class Weather
    attr_reader :speed, :humidity, :temp, :temp_min, :temp_max, :icon, :date

    def initialize(options = {})
      main = options['main']
      @speed    = options['wind']['speed']
      @humidity = main['humidity']
      @temp     = to_fahrenheit(main['temp'])
      @temp_min = to_fahrenheit(main['temp_min'])
      @temp_max = to_fahrenheit(main['temp_max'])
      @icon     = options['weather'][0]['main']
      @date     = options['dt_txt'] || Time.now
    end

    private

    def to_fahrenheit(x)
      { kelvin: x, fahrenheit: x * (9 / 5.0) - 459.67 }
    end
  end
end