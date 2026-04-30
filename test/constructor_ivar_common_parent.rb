# Regression test: constructor params receiving different subclasses
# should widen to the common parent type instead of boxed poly.

class BaseNode
  def label
    "base"
  end
end

class LeftChild < BaseNode
  def label
    "left"
  end
end

class RightChild < BaseNode
  def label
    "right"
  end
end

class NodeBox
  def initialize(value)
    @value = value
  end

  def show
    puts @value.label
  end
end

NodeBox.new(LeftChild.new).show
NodeBox.new(RightChild.new).show
