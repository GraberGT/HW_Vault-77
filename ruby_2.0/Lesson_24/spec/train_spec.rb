# frozen_string_literal: true

RSpec.describe Train do
  let!(:train) { Train.new(123) }
  let!(:station1) { Station.new('ala') }
  let!(:station2) { Station.new('ast') }
  let!(:passenger_train) { Passenger_train.new(1234) }
  let!(:cargo_train) { Cargo_train.new(12_345) }
  let!(:route) { Route.new('station1', 'station2') }

  describe '#train number' do
    it 'create train number' do
      expect(train.number).to eq '123'
    end
  end

  describe '#passenger train number' do
    it 'create passenger_train' do
      expect(passenger_train.number).to eq '1234'
    end
  end

  describe '#cargo train number' do
    it 'create cargo_train' do
      expect(cargo_train.number).to eq '12345'
    end
  end

  describe '#name station1' do
    it 'create name station1' do
      expect(station.name).to eq 'ala'
    end
  end

  describe '#name station2' do
    it 'create name station2' do
      expect(station.name).to eq 'ast'
    end
  end

  describe '#route' do
    it 'create route' do
      expect(route.station_route('ala', 'ast')).to eq true
    end
  end

  describe '#next station' do
    it 'next_station' do
      train.next_station

      expect(train.next_station).to eq 'station1'
    end
  end

  describe '#next station' do
    it 'next_station' do
      train.previous_station

      expect(train.previous_station).to eq 'station2'
    end
  end
end
