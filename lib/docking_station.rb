class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise ArgumentError, "No bikes in dock" if empty?
    bikes.pop
  end

  def dock(bike)
    raise ArgumentError, "Dock full" if full?
    bikes << bike
    "Bike docked"
  end

  def list_bikes
    bikes
  end

  private

  def full?
    bikes.length >= 20
  end

  def empty?
    bikes.empty?
  end
end

class Bike
  def working?
    true
  end
end
