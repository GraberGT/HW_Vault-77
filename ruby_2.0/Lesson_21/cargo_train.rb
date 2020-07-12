# frozen_string_literal: true

class CargoTrain < Train
  @trains = {}

  def initialize(number)
    @type_of = :cargo
    super
  end
end
