class Array

  def square
    self.map { |n| n **2}
  end

  def average
    self.each { |n| return 0 if n.class != Integer}
    self sum / self.size
  end

  def even_odd
    self.partition { |n| n[0].zero? }
  end

  def reverse_strings
    self.map { |n| p n.reverse }
  end

end