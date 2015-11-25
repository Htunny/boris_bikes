require_relative 'bike'

class DockingStation

  def release_bike
   fail 'No bikes available' if @bike
    @bike
  end

  def dock(bike)
   fail 'Docking Station full' if @bike
    @bike = bike
  end

  def bike
    @bike
  end
end
