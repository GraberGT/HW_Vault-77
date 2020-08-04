# frozen_string_literal: true

require 'sinatra/base'
require 'json'

Dir['./*.rb'].sort.each { |file| require file }
Dir['./*.rb'].sort.each { |file| require file }

require_relative 'webapp'

WebApp.run!
