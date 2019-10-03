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
      choice_interface
      @choice = gets.chomp.to_i
    break if @choice == 0
      process_choice
  end

  def choice_interface
    puts "Enter 1 create station"
    puts "Enter 2 create route"
    puts "Enter 3 add station"
    puts "Enter 4 delete station"
    puts "Enter 5 create train"
    puts "Enter 6 create wagon"
    puts "Enter 7 accept wagon"
    puts "Enter 8 delete wagon"
    puts "Enter 9 assign route"
    puts "Enter 10 send train to the next station"
    puts "Enter 11 send train to the previous station"
    puts "Enter 12 show list of stations"
    puts "Enter 13 show list of station's trains"
    puts "Enter 0 exit "
  end

  def process_choice
    case choice
    when 1
     create_station
    when 2
     create_route
    when 3
      add_station
    when 4
      delete_station
    when 5
     create_train
    when 6
     create_wagon
    when 7
     accept_wagon
    when 8
     remove_wagon
    when 9
     route_to_train
    when 10
     go_forward
    when 11
     go_back
    when 12
     list_stations(route = nil,@message)
    when 13
     station_trains
    end
  end

  def create_station
    p "Enter Name Station"
    name = Station.new(gets.chomp.to_s)
    @stations << name
  end

  def stations
    @stations
  end

  def create_train
    puts "Enter train number"
    number = gets.chomp.to_i

    puts "Passenger or cargo"
    train_type = gets.chomp.to_s
    train_type == 'passenger'? create_passenger_train(number) : create_cargo_train(number)
  end

  def create_passenger_train(number)
    @trains << PassengerTrain.new(number)
  end

  def create_passenger_wagon
    puts "How many seats"
    seats_quantity = gets.chomp.to_i
    @wagons << PassengerWagon.new(seats_quantity)
  end
  
  def create_cargo_train(number)
    @trains << CargoTrain.new(number)
  end

  def create_cargo_wagon
    puts "How many volume"
    volume = gets.chomp.to_f
    @wagons << CargoWagon.new(volume)
  end

  def create_wagon
    puts "Passenger or cargo"
    type = gets.chomp.to_s
    return puts "Provide parameters" if type.nil?
    type == "cargo"?  create_cargo_wagon : create_passenger_wagon
  end

  def select_train
    puts "Enter number train"
    @trains.each.with_index(1){ |train, index| puts "#{index}. #{train.class}"}
    puts "You need to create train" if @trains.empty?
    @train = @trains[gets.chomp.to_i - 1]
  end

  def select_wagon
    return puts "You need to create wagon"  if @wagons.empty?
    puts "Enter number wagon"
    @wagons.each.with_index(1){ |wagon,index| puts "#{index}.#{wagon.class}"}
    @wagon = @wagons[gets.chomp.to_i - 1]
  end

  def select_route
    return puts "You need to create route"  if @routes.empty?
    puts "Enter number route"
    @routes.each.with_index(1){ |route, index| puts "#{index}. #{route.name}"}
    @route = @routes[gets.chomp.to_i - 1]
  end

  def accept_wagon
    select_train
    select_wagon
    @train.add_wagon(@wagon)
  end

  def remove_wagon
    select_train
    puts "Number of wagon to remove"
    @train.wagons.each.with_index(1){ |wagon, index| puts "#{index}. #{wagon.class}"}
    wagon = @train.wagons[gets.chomp.to_i - 1]
    @train.delete_wagon(wagon)
  end

  def route_to_train
    select_train
    select_route

    @train.take_route(@route)
  end

  def go_forward
    select_train
    return puts "You need to assign route" if @train.route == nil
    @train.move_forward
  end

  def go_back
    select_train
    return puts "You need to assign route" if @train.route == nil
    @train.move_back
  end

  def list_stations(route = nil,message)
    return puts "You need create stations"  if @stations.empty?
    @message = "List stations"
    puts message
   
    @stations.each.with_index(1) { |station, index| puts "#{index}. #{station.name}"}
    @station = @stations[gets.chomp.to_i - 1]
  end

  def station_trains
    list_stations
    return puts "No trains"  if @station.trains.empty?
    @station.trains.each.with_index(1) { |train, index| puts "#{index}. #{train.class}"}
  end

App.new.start
