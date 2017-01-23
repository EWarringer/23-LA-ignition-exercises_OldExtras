class Square
  def initialize(side, x = nil, y = nil)
    @side = side
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

  def x
    @x
  end

  def y
    @y
  end

  def length
    @side
  end

  def width
    @side
  end

  def diameter
    Math.sqrt(2) * @side
  end

  def area
    @side**2
  end

  def perimeter
    @side*4
  end

  def contains_point?(x, y)
    i = @side.to_f/2
    if x.between?(@x-(i), @x+(i)) && y.between?(@y-(i), @y+(i))
      true
    else
      false
    end
  end
end
