# frozen_string_literal: true

require_relative 'validatable'

class Station
  include Validatable

  attr_reader :id, :name, :created_at

  def initialize(opts)
    @id = rand(36**8).to_s(36)
    @name = opts[:name]
    @created_at = Time.now
    validate
    store_info if valid?
  end

  private

  def store_info
    info = { "id": id.to_s, "name": name.to_s, "created_at": created_at.to_s }
    File.open('data/stations.txt', 'a+') { |file| file.puts(info.to_json) }
  end

  def validate
    super(name)
    self.valid = true
  rescue AttributeSizeError, AttributePresentError => e
    self.valid = false
  end
end
