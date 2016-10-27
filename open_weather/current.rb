require 'rest-client'
require 'json'
module OpenWeather
  # current weather
  class Current

    URL = "http://api.openweathermap.org/data/2.5/weather?q=#{CITY},#{COUNTRY}"

    def self.weather
      if Manager.can_consume?
        @weather = load_weather
        @weather
      else
        @weather
      end
    end

    def self.speed
      weather if weather.nil?
      weather.speed
    end

    def self.humidity
      weather if weather.nil?
      weather.humidity
    end

    def self.temp
      weather if weather.nil?
      weather.temp
    end

    def self.temp_min
      weather if weather.nil?
      weather.temp_min
    end

    def self.temp_max
      weather if weather.nil?
      weather.temp_max
    end

    def self.icon
      weather if weather.nil?
      weather.icon
    end

    def self.load_weather
      response = RestClient.get url
      if response.code == 200
        json = JSON.parse response.body
        @weather = Weather.new(json)
      else
        @weather = Weather.new
      end
    end

    def self.url
      URL + "&appid=#{API_KEY}"
    end
  end
end
