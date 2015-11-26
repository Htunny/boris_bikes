require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
   fail 'No bikes available' if @bikes.length <= 0
    @bikes
  end

  def dock(bike)
   fail 'Docking Station full' unless @bikes.count < 20
    @bikes << bike
  end

  attr_reader :bikes
end
