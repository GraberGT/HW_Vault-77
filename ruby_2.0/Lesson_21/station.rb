# frozen_string_literal: true

require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'Validator'

class Station
  include Validator

  attr_reader :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @stations = []
    @trains = []
    @stations << self
    validate
  end

  class << self
    attr_reader :stations
  end

  def join_train(train)
    @trains << train
  end

  def trains_type(type)
    @trains.select { |train| train.type == type }
  end

  def send_train(train)
    @trains.delete(train)
  end

  def validate
    super(stations)
    super(name)
  end
end
