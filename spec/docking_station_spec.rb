require 'docking_station'

describe DockingStation do
  it 'does it respond to release' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'gives me a bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq('Bike docked')
  end

  it 'lists docked bikes' do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.list_bikes).to eq([bike])
  end

end
