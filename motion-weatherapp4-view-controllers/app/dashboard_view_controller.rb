class DashboardViewController < UIViewController

  attr_accessor :currentTemperatureLabel

  # Implement WeatherService delegate
  def did_fetch_weather(weather)
    @currentTemperatureLabel.text = weather.current_temperature.to_s
  end

  def viewDidLoad
    super
    view.backgroundColor = UIColor.whiteColor

    temp_weather_service = TempWeatherService.alloc.init

    # register ourselves as a delegate for the weather service
    temp_weather_service.delegate = self;

    # call the service
    temp_weather_service.fetch_weather
  end

  def viewDidUnload
    self.currentTemperatureLabel = nil
    super
  end

end