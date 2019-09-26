require_relative 'train'
require_relative 'station'
require_relative 'cargo_Wagon'

class CargoTrain < Train
  attr_reader :number, :amount_wagon

  def initialize(number)
    super(number)
    @amount_wagon = []
  end

  def add_wagon(wagon)
    return "Error" if wagon.class != CargoWagon
    @amount_wagon << wagon
  end

  def delete_wagon(wagon)
    return "Error" if wagon.class != CargoWagon
    @wagons_amount.delete(wagon)
  end
end