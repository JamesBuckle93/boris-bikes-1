require 'docking_station'

describe DockingStation do 
  # it { is_expected.to respond_to :release_bike }
  it 'responds to release_bike' do
  expect(subject).to respond_to :release_bike
  end

  it 'gets and tests a bike' do 
  bike = subject.release_bike 
  expect(bike).to be_working 
  end

  it "stores a bike" do
    docking_station = DockingStation.new
    new_bike = Bike.new
    docking_station.release_bike
    docking_station.store_bike(new_bike)
    expect(docking_station.bike_storage).to include new_bike
  end

  it "no bikes error" do
    docking_station = DockingStation.new
    for i in (0..9)
      docking_station.release_bike
    end
    expect {docking_station.release_bike}.to raise_error "No Bikes!"
  end

  it "can't store bike" do
    docking_station = DockingStation.new
    expect {docking_station.store_bike("test")}.to raise_error "Not A Bike!"
  end

  it "storage full" do
    docking_station = DockingStation.new
    expect {docking_station.store_bike(Bike.new)}.to raise_error "Full!"
  end
end