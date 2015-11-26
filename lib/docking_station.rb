require_relative 'bike'

class DockingStation

  def release_bike
   fail 'No bikes available' unless @bikes
    @bikes
  end

  def dock(bike)
   fail 'Docking Station full' if @bikes
    @bikes = bike
  end

  attr_reader :bikes
end
