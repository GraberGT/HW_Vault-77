# frozen_string_literal: true

module Valid
  protected

  def valid?
    validate!
  rescue StandardError
    false
  end
end

  NUM = /^[a-z\d]{3}-?[a-z\d]{2}$/i.freeze
  NAME = /^[A-Z]{1}[a-z]+$/.freeze

  case valid
  when self.class == Train
    raise 'Type cargo or passanger' unless %i[cargo_train passanger_train].include? type
    raise 'Invalid number' if number !~ NUM
  when self.class == Station
    'Invalid name station' if name !~ NAME
  when self.class == Route
    raise 'Route consist of stations' unless stations[0].is_a?(Station) && stations[-1].is_a?(Station)
  else
    true
  end
end
