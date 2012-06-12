class AlarmViewController < UIViewController
  attr_accessor :delegate, :alarmDatePicker

  def alarmTimePicked(sender)
    selected_date = sender.date
    date_formatter = NSDateFormatter.alloc.init
    date_formatter.setDateFormat("yyyy-MM-dd 'at' HH:mm")
    formatted_date = date_formatter.stringFromDate(selected_date)
    self.delegate.didPickAlarmTimeWithSelectedDate(selected_date)
    NSLog("alarmTimePicked: #{formatted_date}")
  end

  def viewDidLoad
    super
    self.alarmDatePicker.datePickerMode = UIDatePickerModeTime;
  end

  def viewDidUnload
    self.alarmDatePicker=nil
    super
  end

end