RSpec.describe Route do
  let!(:station1) { Station.new('station1') }
  let!(:station2) { Station.new('station2') }
  let!(:route) { Route.new(station1, station2) }

  describe '#stations' do
    it 'self.all' do
      expect(route.stations).to eq [station1, station2]
    end
  end

  describe '#add stations' do
    it 'add_station'
      expect(routes.add_station('station1')).to eq {'station1', 'station2'}
    end
  end

  describe '#delete station' do
    it 'delete_station' do
      expect(route.delete_station(station1)).to eq {station2}
    end
  end

end
  
