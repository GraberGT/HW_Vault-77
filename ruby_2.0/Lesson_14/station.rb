require_relative 'passanger_train'
require_relative 'cargo_train'

class Station
  attr_reader :name
  attr_reader :trains

  

  def initialize(name)
    @name = name
    @trains = []
    @@stations << self
  end

  def self.all
    @@stations
  end

  def join_train(train)
    @trains << train
  end

  def trains_type(type)
    @trains.select{|train| train.type == type}
  end

  def send_train(train)
    @trains.delete(train)
  end
end