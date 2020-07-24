# frozen_string_literal: true

class Passenger_wagon
  include InstanceCounter
  include Manufacturer

  attr_reader :pass_seats

  def initialize(pass_seats)
    @pass_seats = pass_seats
  end
end
