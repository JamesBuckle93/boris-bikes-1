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
end