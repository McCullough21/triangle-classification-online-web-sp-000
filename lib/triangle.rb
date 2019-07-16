class Triangle
  attr_accessor :a, :b, :c, :equilateral, :isosceles, :scalene

  def initialize(side_one, side_two, side_three)
    @a = side_one
    @b= side_two
    @c = side_three

  end

  def kind
    if (@a == 0 || @b == 0 || @c == 0) || (((@a + @b) < @c) || ((@a + @c) < @b) || ((@b + @c) < @a))
      raise TriangleError

  elsif @a == @b && @a == @c
    @equilateral

  elsif @a == @b || @a == @c || @b == @c
      @isosceles
  else
    @scalene
  end
end

class TriangleError < StandardError

def message
  "Not a real Triangle"
end

end
end
