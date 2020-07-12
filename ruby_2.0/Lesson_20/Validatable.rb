# frozen_string_literal: true

module Validator
  def validate?
    validate!
  rescue StandardError
    false
  end

  protected

  NUM = /^[a-z\d]{3}-?[a-z\d]{2}$/i.freeze
  NAME = /^[A-Z]{1}[a-z]+$/.freeze

  def validate!
    if self.class == Train
      raise 'Type cargo or passanger' unless %i[cargo_train passanger_train].include? type
      raise 'Invalid number' if number !~ NUM
    elsif self.class == Station
      raise 'Invalid name station' if name !~ NAME
    elsif self.class == Route
      raise 'Route consist of stations' unless stations[0].is_a?(Station) && stations[-1].is_a?(Station)
    else
      true
    end
  end
end
