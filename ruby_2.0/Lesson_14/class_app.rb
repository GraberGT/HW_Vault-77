# frozen_string_literal: true

require_relative 'station'
require_relative 'route'
require_relative 'passanger_train'
require_relative 'cargo_train'
require_relative 'passanger_wagon'
require_relative 'cargo_wagon'

class App
  def initialize
    @stations = []
    @route = []
    @trains = []
    @wagons = []
  end

  def start
    loop do
      choice = choice_interface
      break if choice == '0'

      process_choice(choice)
    end
  end

  def choise_interface
    puts '1. Enter Station'
    puts '2. Enter Passanger Train'
    puts '3. Enter Cargo Train'
    puts '4. Enter Passanger Wagon'
    puts '5. Enter Cargo Wagon'
    puts '6. Enter Route'
    puts '7. List Stations'
    puts '0. Exit'
    choice = gets.chomp.to_s
  end

  def process_choice(choice)
    case choice
    when '1'
      create_station
    when '2'
      create_passanger_train
    when '3'
      create_cargo_train
    when '4'
      create_passanger_wagon
    when '5'
      create_cargo_wagon
    when '6'
      create_route
    when '7'
      stations
    end
  end

  def create_station
    p 'Enter Name Station'
    name = gets.chomp
    name = Station.new(name)
    @stations << name
  end

  def create_route
    st1 = @stations[0]
    st2 = @stations[-1]
    rou = Route.new(st1, st2)
    @route << rou
  end

  def stations
    p @stations
  end

  def create_passanger_train
    p 'Enter Passanger Train Number'
    num = gets.chomp.to_s
    tr = PassangerTrain.new(num)
    @trains << tr
  end

  def create_cargo_train
    p 'Enter Cargo Train Number'
    num = gets.chomp.to_s
    tr = CargoTrain.new(num)
    @trains << tr
  end

  def create_passanger_wagon
    p 'Enter Passanger Seats'
    num = gets.chomp.to_s
    wagon = PassangerWagon.new(num)
    @wagons << wagon
  end

  def create_cargo_wagon
    p 'Enter Cargo Volume'
    num = gets.chomp.to_s
    wagon = CargoWagon.new(num)
    @wagons << wagon
  end
end

App.new.start
