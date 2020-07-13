# frozen_string_literal: true

module Valid
  protected

  def valid?
    validate!
  rescue StandardError
    false
  end
end
