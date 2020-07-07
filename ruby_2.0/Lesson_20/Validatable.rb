module Validator
  
  def validate_number
    raise "Invalid number" unless number.length == 10
  end

  def validate_name
    raise "Invalide name" unless name.String
  end

  def validate_type_train
    raise "Invalid type" unless :type cargo_train.empty?|| :passenger_train.empty?
  end

  def validate_volume
    raise "Invalid volume" unless volume.max >= 10
  end

end



