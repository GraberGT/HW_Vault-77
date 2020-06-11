module InstanceCounter
  module ClassMethods
    attr_accessor :instances
  end
end

module InstanceMethods
  private
  def register_instance
    self.class.instances ||=0
    self.class.instances +=1
  end
end


module Manufacturer
  attr_accessor :Manufacturer
end