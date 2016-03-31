class BinaryNode
  attr_reader :value
  def initialize(value)
    @value = value
    @parent = nil
    @left = nil
    @right = nil
  end

end
