class SettingsViewController < UIViewController
  attr_accessor :twitterTagTextField, :mondayAlarmSwitch, :mondayAlarmLabel, :cityLabel

  def prepareForSegue(segue, sender:sender)
    newController = segue.destinationViewController

    if ( segue.identifier == "mondaySegue" )
      alarmViewController = newController
      alarmViewController.delegate = self
    elsif ( segue.identifier == "citySegue" )
      cityViewController = newController;
      cityViewController.delegate = self
    end
  end

  def didPickCity(city)
    self.cityLabel.text = city;
    NSLog("didPickCity: #{city}")
  end

  def didPickAlarmTimeWithSelectedDate(selected_date)
    # todo: figure out which day of the week this alarm was for - assume Monday
    date_formatter = NSDateFormatter.alloc.init;
    date_formatter.setDateFormat("HH:mm")
    formatted_date = date_formatter.stringFromDate(selected_date)
    self.mondayAlarmLabel.text = formatted_date
    NSLog("didPickAlarmTimeWithSelectedDate: #{formatted_date}")
  end


  def textFieldDidEndEditing(textField)
     NSLog("twitterText: #{textField.text}")
  end

  # enter key pressed
  def textFieldShouldReturn(textField)

    # if something was typed
    if (textField.text.length)
      # give up control of the caret (blinking cursor)
      textField.resignFirstResponder
      # and dismiss the keyboard
      return true
    else
      # Keep on typing
      return false
    end
  end

  def mondayAlarmSwitched(sender)
     NSLog("mondaySwitch: #{sender.isOn}")
  end


  def viewDidLoad
    super
    self.twitterTagTextField.delegate = self
    self.twitterTagTextField.placeholder = "e.g. #YYC for Calgary airport"
  end

  def viewDidUnload
    self.twitterTagTextField=nil
    self.mondayAlarmLabel=nil
    self.mondayAlarmSwitch=nil
    self.cityLabel=nil
    super
  end

end