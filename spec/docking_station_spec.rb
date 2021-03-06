require 'docking_station'

describe DockingStation do
  # it 'returns a method called release_bike' do
  #  #  bike = DockingStation.new
  #   expect(DockingStation.new.release_bike).to eq true
  # end

let(:bike) { double(:bike, :working? => true) }
# bike = double(:bike).to receive (:working?).and_return true



  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end


describe '#release_bike' do
  it 'releases a bike' do
    subject.dock(bike)

    expect(subject.release_bike).to eq bike
  end
  it 'raises an error there are no bikes available' do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end
end



describe '#dock' do
  it 'raise error when full' do
    subject.dock(bike)
    expect {DockingStation::DEFAULT_CAPACITY.times do
    subject.dock(bike) end }.to raise_error 'Docking Station full'
  end
end


  it 'releases working bikes' do
    #bike = subject.release_bike

    expect(bike).to be_working
  end


  it 'docks something' do
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'tells which bikes are docked' do
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  it "Has a default capacity of DEFAULT_CAPACITY" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end


  it 'does not release a bike if broken' do
    subject.dock(bike)
    allow(bike).to receive(:working?).and_return(false)
    #subject.bikes.last.report_broken_bike
    expect{subject.release_bike}.to raise_error 'Can not release broken bike'
  end


  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it { is_expected.to respond_to(:capacity) }

end
