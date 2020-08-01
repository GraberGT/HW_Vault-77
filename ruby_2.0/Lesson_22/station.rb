# frozen_string_literal: true

require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'Validator'
require_relative 'logs'

class Station
  include Validator
  include Logable

  attr_reader :name
  attr_reader :trains

  def initialize(name)
    @name = name
    @stations = []
    @trains = []
    @stations << self
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

  def list_trains
    return unless block_given?

    trains.each do |train|
      yield(train)
    end

    def validate
      super(stations)
      super(name)
    rescue AttributeSizeError, AttributePresentError => e
      write_error(e.message)
      self.valid = false
    else
      self.valid = true
    end
end
end
