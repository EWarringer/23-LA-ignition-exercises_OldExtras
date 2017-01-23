class Circle
  def initialize(radius, x = nil, y = nil)
    @radius = radius
    if x.nil?
      @x = 0
    else
      @x = x
    end
    if y.nil?
      @y = 0
    else
      @y = y
    end
  end

  def radius
    @radius
  end

  def x
    @x
  end

  def y
    @y
  end

  def diameter
    @radius*2
  end

  def area
    Math::PI*@radius**2
  end

  def perimeter
    2*Math::PI*@radius
  end
end
