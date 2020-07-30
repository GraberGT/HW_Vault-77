# frozen_string_literal: true

class AttributeSizeError < StandardError
  ERROR = "Attribute's size is not valid"

  def message
    ERROR
  end
end

class AttributePresentError < StandardError
  ERROR = 'Attribute is not present'

  def message
    ERROR
  end
end
