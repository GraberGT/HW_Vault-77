# frozen_string_literal: true

require_relative 'Manufacturer'
require_relative 'InstanceCounter'
require_relative 'Validator'

class Passenger_wagon
  include InstanceCounter
  include Manufacturer

  attr_reader :pass_seats

  def initialize(pass_seats)
    @pass_seats = pass_seats
    validate
  end
end
