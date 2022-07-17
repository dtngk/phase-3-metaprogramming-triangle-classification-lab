class Triangle
  # write code here
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    checkTriangle

    if ((self.a == self.b) && (self.a == self.c) && (self.c == self.b))
      :equilateral
    elsif ((self.a == self.b) || (self.a == self.c) || (self.b == self.c))
      :isosceles
    else
      :scalene
    end
  end

  def checkSide
    (self.a + self.b > self.c) && (self.a + self.c > self.b) && (self.b + self.c > self.a)
  end

  def checkLength
    (a > 0) && (b > 0) && (c > 0)
  end
  
  def checkTriangle
    raise TriangleError unless checkSide && checkLength
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
