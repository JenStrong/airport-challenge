require_relative 'plane'
require_relative 'weather'

class Airport
  DEFAULT_CAPACITY = 20
  attr_reader :hanger, :capacity

  def initialize(weather, capacity = DEFAULT_CAPACITY)
    @hanger = []
    @weather = weather
    @capacity = capacity
  end

  def land(plane)
  raise 'Airport is full' if full?
  raise 'Plane already at airport' if include?(plane)
    @hanger.push(plane)
  end

  def full?
    @hanger.count >= @capacity
  end

  def include?(plane)
    @hanger.include?(plane)
  end

  def takeoff
  #raise 'Plane cannot takeoff when weather is stormy' if Weather.todays_weather == "stormy"
  #   @hanger.pop
  end
end
