# frozen_string_literal: true

require_relative 'interface.rb'
require_relative 'station.rb'
require_relative 'route.rb'
require_relative 'train.rb'
require_relative 'cargo_train.rb'
require_relative 'passenger_train.rb'
require_relative 'passenger.rb'
require_relative 'carriage.rb'
require_relative 'cargo.rb'
require 'securerandom'

main = Main.new
main.execute
