require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

attr_reader :bikes
attr_reader :capacity

  def release_bike
   fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
   fail 'Docking Station full' if full?
    bikes << bike
  end

private

 def full?
   if bikes.length >= capacity
   return true
 else
   return false
 end
 end

 def empty?
   bikes.empty?
 end



end
