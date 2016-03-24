require_relative 'bounding_box'

class BoundingArea

  def initialize(boxes)
    @boxes = boxes
  end

  def boxes_contain_point?(x, y)
    if @boxes.empty?
      false
    else
    answers = false
      @boxes.each do | box |
        if box.contains_point?(x, y)
          answers = true
        end
      end
    return answers
    end
  end
end
