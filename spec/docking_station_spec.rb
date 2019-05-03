require 'docking_station'

describe DockingStation do
  it 'does it respond to release' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'gives me a bike' do
    dock_bike = subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq('Bike docked')
  end

  it 'lists docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.list_bikes).to eq([bike])
  end

  it 'raise error if no bikes to release' do
    expect {
      if subject.bikes.empty?
        subject.release_bike
      end
    }.to raise_error
  end

end
