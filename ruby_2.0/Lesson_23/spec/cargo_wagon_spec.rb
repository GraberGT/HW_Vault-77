# frozen_string_literal: true

RSpec.describe Cargo_wagon do
  let!(:wagon) { Cargo_wagon.new(1000) }

  describe '#volume' do
    it 'volume' do
      expect(wagon.volume).to eq 1000
    end
  end

  describe '#load volume' do
    it 'load wagon' do
      wagon.load(500)

      expect(wagon.free_volume).to eq 500
    end
  end
end
