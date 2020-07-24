# frozen_string_literal: true

require_relative 'Manufacturer'
require_relative 'InstanceCounter'
require_relative 'Validator'

class Cargo_wagon
  include InstanceCounter
  include Manufacturer
  include Validator

  attr_reader :volume

  def initialize(volume)
    @volume = volume
    validate
  end
end
