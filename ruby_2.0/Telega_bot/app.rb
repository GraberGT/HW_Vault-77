# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/namespace'
require 'json'
require 'mongoid'

Dir['./Telega_bot/*.rb'].sort.each { |file| require file }
Dir['./Telega_bot/*.rb'].sort.each { |file| require file }

require_relative 'routeappoint'
require_relative 'api'


Api.run!
