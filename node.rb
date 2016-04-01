class BinaryNode
  attr_reader :value
  attr_accessor :parent
  
  def initialize(value)
    @value = value
    @parent = nil
    @left = nil
    @right = nil
  end

  def left=(node)
    @left = node
    node.parent = self
  end

  def right=(node)
    @right = node
    node.parent = self
  end

end
