require_relative 'boat'

describe Boat do
  it 'should create boats' do
    expect(Boat.new).to be_a Boat #check if it's a Boat Class
  end

  #Indicate that a method called allowed_aboard in the class Boat is being tested
  describe '#allowed_aboard?' do
    it 'returns true if inventory includes a life jacket' do
      a_boat = Boat.new
      allowed = a_boat.allowed_aboard?(['life jacket', 'sun glasses'])
      expect(allowed).to be true
    end
  end
end