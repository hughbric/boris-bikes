class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    #print @capacity
    #print DEFAULT_CAPACITY
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
    bikes.length >= @capacity
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
