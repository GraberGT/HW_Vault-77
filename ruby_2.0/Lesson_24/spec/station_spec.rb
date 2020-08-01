# frozen_string_literal: true

RSpec.describe Station do
  let!(:station) { Station.new(ala) }
  let!(:train) { Train.new(123) }

  describe '#name station' do
    it 'create name station' do
      expect station.name.to eq 'ala'
    end
  end

  context 'join train' do
    before { station.join_train(train) }
    describe '#join train' do
      it 'join_train' do
        expect(station.trains.include?(train).to(eq true))
      end
    end
  end

  describe '#send train' do
    it 'send_train' do
      station.send_train(train)

      expect(station.trains.include?(train)).to eq false
    end
  end

  describe '#list trains' do
    it 'list_trains' do
      expect(stations.list_trains.include?(stations)).to eq true
    end
  end
end
