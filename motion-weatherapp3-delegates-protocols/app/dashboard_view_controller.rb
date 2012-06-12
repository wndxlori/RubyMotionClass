class DashboardViewController < UIViewController

  # Implement WeatherService delegate
  def did_fetch_weather(weather)
    @currentTemperatureLabel.text = weather.current_temperature.to_s
  end

  def create_temperature_label
    temperature_label = UILabel.alloc.initWithFrame([[10,160],[100,180]])
    temperature_label.text = "22c"
    temperature_label
  end

  def loadView
    self.view = UIView.alloc.init
  end

  def viewDidLoad
    super
    view.backgroundColor = UIColor.whiteColor
    @currentTemperatureLabel = create_temperature_label
    view.addSubview(@currentTemperatureLabel)

    temp_weather_service = TempWeatherService.alloc.init

    # register ourselves as a delegate for the weather service
    temp_weather_service.delegate = self;

    # call the service
    temp_weather_service.fetch_weather
  end

  def viewDidUnload
    @currentTemperatureLabel = nil
    super
  end

end