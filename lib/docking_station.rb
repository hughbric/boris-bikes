class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
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
