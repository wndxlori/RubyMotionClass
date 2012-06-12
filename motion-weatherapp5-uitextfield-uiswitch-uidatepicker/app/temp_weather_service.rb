class TempWeatherService

  attr_accessor :delegate

  def fetch_weather
    # fake weather for now
    @weather = Weather.new
    @weather.current_temperature = -20;

    if (self.delegate.respond_to?(:did_fetch_weather))
      self.delegate.did_fetch_weather(@weather)
    end
  end

end