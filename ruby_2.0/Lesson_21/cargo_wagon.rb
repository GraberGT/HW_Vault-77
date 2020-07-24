# frozen_string_literal: true

require_relative 'Manufacturer'
require_relative 'InstanceCounter'
require_relative 'Validator'

class Cargo_wagon
  include InstanceCounter
  include Manufacturer
  include Validator

  attr_reader :volume, :load_volume, :type

  def initialize(volume)
    @volume = volume
    @load_volume = 0
    @type = 'cargo'
    validate
  end

  def load(volume)
    self.load_volume += volume if (load_volume + volume) <= volume
  end

  def free_volume
    volume - load_volume
  end
end
