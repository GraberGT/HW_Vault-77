# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra'
require 'mongoid'
require 'json'
require 'sinatra/namespace'
require_relative 'api'

Dir['./Telega_bot/*.rb'].sort.each { |file| require file }

Api.run!
Mongoid.load! 'mongoid.config'
