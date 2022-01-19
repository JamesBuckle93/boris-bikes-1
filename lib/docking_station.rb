require_relative 'Bike'

class DockingStation
  attr_reader :bike_storage

  def initialize
    @bike_storage = []
    for i in (0..4)
      @bike_storage.push(Bike.new)
    end
  end

  def release_bike
    if @bike_storage.length == 0
      fail "No Bikes!"
    else
      @bike_storage.pop
    end
  end

  def store_bike(bike)
    if bike.is_a? Bike
      if @bike_storage.length < 5
        bike_storage.push(bike)
      else
        fail "Full!"
      end
    else
      fail "Not A Bike!"
    end
  end
end
