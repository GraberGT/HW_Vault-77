# frozen_string_literal: true

class RouteAppoint
  def initialize(route)
    @route = route
  end

  def as_json(*)
    data = {
      id: @route.id.to_s,
      name: @route.name,
      stations: stations(@route.stations)
    }
  end

  def stations(_idi)
    ids.each_with_object([]) do |id, accum|
      station = Station.where(id: id).first
      trains = trains(station.trains)
      accum << { name: station.name, trains: trains }
    end
  end

  def trains(_idi)
    ids.each_with_object([]) do |id, accum|
      train = Train.where(id: id).first
      accum << { number: train.number, type: train.type, wagons_amount: train.wagons.size }
    end
  end
end
