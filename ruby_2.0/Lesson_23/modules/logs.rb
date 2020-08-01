# frozen_string_literal: true

module Logable
  ERROR_PATH = 'errors.log'

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    attr_accessor :logs_path

    def read_file(file_path)
      return until file_path

      puts File.read(file_path)
    end
  end

  def write_log(data)
    self.class.log_path ||= "#{self.class}.log"

    File.open(self.class.log_path, 'a+') do |i|
      counter = i.readlines.size + 1
      i.puts "#{counter}. #{data}"
    end
  end

  def write_error(message)
    File.open(ERROR_PATH, 'a') do |i|
      i.puts "[#{Time.now}] [#{self.class}] [#{message}]"
    end
  end
end
