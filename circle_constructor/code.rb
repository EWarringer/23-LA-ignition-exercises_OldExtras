class Circle
  def initialize(circle_size)
    if circle_size.kind_of?(Hash)
      if circle_size.keys[0] == :radius
        @radius = circle_size.values[0]
      else
        @radius = circle_size.values[0]/2
      end
    else
      @radius = circle_size
    end
  end
end
