# Regression test: constructor params copied into ivars must widen when
# different object classes flow through the same slot.

class LeftNode
  def label
    "left"
  end
end

class RightNode
  def label
    "right"
  end
end

class Box
  def initialize(value)
    @value = value
  end

  def show
    puts @value.label
  end
end

Box.new(LeftNode.new).show
Box.new(RightNode.new).show
