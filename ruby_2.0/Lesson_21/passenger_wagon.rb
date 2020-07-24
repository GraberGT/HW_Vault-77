# frozen_string_literal: true

require_relative 'Manufacturer'
require_relative 'InstanceCounter'
require_relative 'Validator'

class Passenger_wagon
  include InstanceCounter
  include Manufacturer
  include Validator

  attr_reader :take_seats, :pass_seats, :type

  def initialize(pass_seats)
    @pass_seats = pass_seats
    @take_seats = 0
    @type = 'passenger'
    validate
  end

  def take_st
    self.take_seats += 1 if take_seats < pass_seats
  end

  def vacant_seats
    pass_seats - take_seats
  end
end
