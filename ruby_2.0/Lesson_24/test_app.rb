class TestApp
  attr_reader :stations, :wagons, :trains, :roites

  def initialize
    @stations = []
    @trains = []
    @wagons = []
    @routes = []
  end

  def start_test
    create_stations(3)
    create_trains(2)
    create_routes(2)
  end

  def create_stations(num)
    num.times do |n|
      stations << Station.new("station#{n}")
    end
  end

  def create_trains(num)
    num.times do |n|
      trains << Passenger_train.new("#{n}")
      trains << Cargo_train.new("#{n}")
    end
  end

  def create_routes(num)
    num.times do
      routes << Route.new(stations.sample, stations.sample)
    end
  end

  def list_trains
    if train.class == Cargo_train
      puts "#{:number}, #{:type}, #{:volume}, #{:load_volume}"
    else train.class == Passenger_train
      puts "#{:number}, #{:type}, #{:pass_seats}, #{:take_seats}"
  end
end