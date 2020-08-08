# frozen_string_literal: true

class Station
  include Mongoid::Documet
  field :name, type: String
  field :trains, type: Array, default: []

  validates :name, presence: true

  index({ name: 1 }, { unique: true, name: 'name_index' })

  def join(train)
    push(trains: train) unless trains.include?(train)
  end

  def delete(train)
    pull(trains: train)
  end
end
