class Train
  include Mongoid::Document
  field :number, type: String
  field :type, type: String
  field :wagons, type: Array, default: []
  field :route, type: String

  validates :number, presence: true
  validates :type, presence: true

  index ({number: 1}, {unique: true})

  def approve_route(route_id)
    station = Station.where(id: route.stations.first).first #метод where относится к ActiveRecord
    raise SearchError, 'Station Not Found' unless station 
    
    route = Route.where(id: route_id).first
    raise SearchError, 'Route Not Found' unless route

    update_attributes(route: route.id.to_s)
    station.accept(id.to_s) #tcp ruby
  end
end

