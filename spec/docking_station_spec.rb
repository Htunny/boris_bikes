require 'docking_station'

describe DockingStation do
  # it 'returns a method called release_bike' do
  #  #  bike = DockingStation.new
  #   expect(DockingStation.new.release_bike).to eq true
  # end
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
end
