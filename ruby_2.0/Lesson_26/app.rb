# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/namespace'
require 'json'
require 'mongoid'

Dir['./Lesson_26/*.rb'].sort.each { |file| require file }
Dir['./Lesson_26/*.rb'].sort.each { |file| require file }

require_relative 'routeappoint'
require_relative 'api'

Mongoid.load! 'mongoid.config'
Api.run!
