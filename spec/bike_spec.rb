require 'bike'

describe Bike do
  # it 'responds to bike' do
    # expect(subject).to respond_to :bike
  # end

  it 'is working' do
    expect(subject).to respond_to :working?
  end
end