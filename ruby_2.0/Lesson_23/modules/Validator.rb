# frozen_string_literal: true

module Validator
  protected

  def valid?(attribute)
    !(attribute.nil? || attribute == '' || attribute == 0 || attribute == [])
  end

  def validate(attribute)
    raise AttributeStandertError unless valid?(attribute)
  end
end
