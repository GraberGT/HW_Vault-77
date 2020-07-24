# frozen_string_literal: true

class Cargo_wagon
  include InstanceCounter
  include Manufacturer

  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end
end
