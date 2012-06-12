class CityViewController < UIViewController

  attr_accessor :delegate, :dataSource, :cities

  def viewDidLoad
    super
    self.cities = ['Calgary','Tokyo','New York']
  end

  def viewDidUnload
    super
  end

  def cities
    @cities ||= []
  end

  def cities=(cities)
    @cities = cities
    self.view.reloadData
    @cities
  end

  # Table view datasource
  def tableView(tableView, numberOfRowsInSection: section)
    self.cities.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cellIdentifier = "cityCell"

    cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) ||
           UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: cellIdentifier)

    # Configure the cell...
    cell.textLabel.text = self.cities[indexPath.row];

    cell
  end

  def tableView(tv, didSelectRowAtIndexPath:indexPath)
    selected_city = self.cities[indexPath.row]
    self.delegate.didPickCity(selected_city)
    NSLog("cityPicked: #{selected_city}")
  end

end