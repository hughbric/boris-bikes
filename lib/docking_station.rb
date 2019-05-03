class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise ArgumentError, "No bikes in dock" if bikes.empty?
    bikes.pop
    #Bike.new
  end

  def dock(bike)
    raise ArgumentError, "Dock full" if bikes.length >= 20
    bikes << bike
    "Bike docked"
  end

  def list_bikes
    bikes
  end
end

class Bike
  def working?
    true
  end
end
