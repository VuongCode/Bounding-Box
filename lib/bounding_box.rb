class BoundingBox
  attr_reader :width, :height, :left, :right, :top, :bottom

  def initialize(x, y, width, height)
    @width = width
    @height = height
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
  end

  def contains_point?(x, y)
    if x >= @left && x <= @right && y >= @bottom && y <= @top
      true
    else
      false
    end
  end
end
