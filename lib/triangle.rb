class Triangle
  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  class TriangleError < StandardError
    def message
      "Not a triangle"
    end
  end

  def kind
    triangle = [@side1, @side2, @side3]
    if triangle.uniq.length == 1
      :equilateral
    elsif triangle.uniq.length == 2
      :isosceles
    elsif triangle.uniq.length == 3
      :scalene
    elsif triangle.length != 3
      begin
      raise TriangleError
      puts TriangleError.message
      end
    end
  end
end
