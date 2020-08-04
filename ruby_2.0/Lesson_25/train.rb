# frozen_string_literal: true

require_relative 'validatable'

class Train
  include Validatable

  attr_reader :id, :number, :type, :created_at

  def initialize(opts)
    @id = rand(1000).to_s
    @number = opts[:number]
    @created_at = Time.now
    validate
    store_info if valid?
  end

  protected

  def store_info
    info = { "id": id.to_s, "number": number.to_s, "type": type.to_s, "created_at": created_at.to_s }
    File.open('data/trains.txt', 'a+') { |file| file.puts(info.to_json) }
  end

  def validate
    super(number)
    self.valid = true
  rescue AttributeSizeError, AttributePresentError => e
    self.valid = false
  end
end
