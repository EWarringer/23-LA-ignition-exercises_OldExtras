class Rectangle
  def initialize(width, height = nil)
    @width = width
    if height.nil?
      @height = width
    else
      @height = height
    end
    @area = @width * @height
  end
end
