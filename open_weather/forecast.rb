module OpenWeather
  class Forecast
    URL = "http://api.openweathermap.org/data/2.5/forecast?q=#{CITY},#{COUNTRY}&mode=json"

    def self.weathers
      if Manager.can_consume?
        @weathers = load_weather
        @weathers
      else
        @weathers
      end
    end

    def self.load_weather
      response = RestClient.get url
      if response.code == 200
        json = JSON.parse response.body
        @weathers = json['list'].collect { |j| Weather.new(j) }
      else
        @weathers = []
      end
    end

    def self.url
      URL + "&appid=#{API_KEY}"
    end
  end
end
