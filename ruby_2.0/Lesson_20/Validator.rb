module Validator
  protected

  def valid?(attribute)
    !(attribute.nil? || attribute == '' || attribute == 0 || attribute == [])
  end

  def validate(attribute)
    raise AttributeValidError unless unless valid?(attribute)
  end
end