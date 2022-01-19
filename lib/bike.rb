class Bike 
  def initialize
    @broken = false
  end

  def working?
    return !@broken
  end
end
