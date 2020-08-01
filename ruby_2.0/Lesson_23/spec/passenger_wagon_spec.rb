RSpec.describe Passenger_wagon do
  let!(:wagon) {Passenger_wagon.new(50)}
  
  describe '#pass seats' do
    it 'pass_seats' do
      expect(pass_seats).to eq 50
    end
  end

  describe '#type' do
    it 'type wagon' do
      expect(wagon.type).to eq 'passenger'
    end
  end

  describe '#take seats' do
    it 'take_st' do
      { 20.times {wagon.take_st} }
      
      expect(wagon.take_st).to eq 20
    end
  end

  describe '#vacants seats' do
    it 'vacant_seats' do
      wagon.take_st

      expect(wagon.vacant_seats).to eq 30
    end
  end

end