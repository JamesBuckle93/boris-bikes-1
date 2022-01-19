require_relative 'Bike'

class DockingStation
  attr_reader :bike_storage


  def initialize
    @bike_storage = []
    @storage_size = 10
    for i in (0..@storage_size-1)
      @bike_storage.push(Bike.new)
    end
  end

  def release_bike
    fail "No Bikes!" if empty?
    @bike_storage.pop
  end

  def store_bike(bike)
    if bike.is_a? Bike
      fail 'Full!' if full?
      bike_storage.push(bike)
    else
      fail "Not A Bike!"
    end
  end

  private def full?
    return @bike_storage.length == @storage_size
  end

  private def empty?
    @bike_storage.empty?
  end
end