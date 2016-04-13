class BinaryNode
  attr_reader :value
  attr_accessor :parent

  def initialize(value)
    @value = value
    @parent = nil
    @left = nil
    @right = nil
  end

  def insert(node)
    case @value <=> node.value
    when 1
      if @left
        @left.insert(node)
      else
        self.left=node
      end
    when -1
      if @right
        @right.insert(node)
      else
        self.right=node
      end
    when 0
      if @right
        @right.insert(node)
      else
        self.right=node
      end
    end
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
