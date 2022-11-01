class Triangle
  attr_accessor :length, :width, :height
  def initialize (length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def valid_triangle
    has_sides = @length > 0 && @width > 0 && @height > 0
    non_violating_inequality = (@length < @width + @height) && (@width < @length + @height) && (@height < @length + @width)
    has_sides && non_violating_inequality
  end

  
  def kind
    if valid_triangle
      if (length == width && length == height && width == height)
        :equilateral
      elsif (length == width || length == height || width == height)
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
  class TriangleError < StandardError
    
  end

end