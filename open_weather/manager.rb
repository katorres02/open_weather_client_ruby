module OpenWeather
  # Manage the number of calls to the api
  class Manager
    LIMIT_CALLS   = 59 # free plan
    LIMIT_SECONDS = 60

    @calls = 0
    @last_call_at = Time.now

    def self.can_consume?
      if @calls < LIMIT_CALLS
        call
        true
      elsif valid_time?
        reset
        true
      else
        # puts (Time.now - @last_call_at)
        false
      end
    end

    def self.call
      @calls += 1
    end

    def self.reset
      # puts "Reset..."
      @calls = 0
      @last_call_at = Time.now
    end

    def self.valid_time?
      (Time.now - @last_call_at) >= LIMIT_SECONDS
    end
  end
end
