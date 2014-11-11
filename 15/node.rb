class Node
  attr_accessor :right
  attr_accessor :down

  def paths_to(node)
    return 1 if node == self
    paths = 0
    paths += @right.paths_to(node) if @right
    paths += @down.paths_to(node) if @down
    paths
  end
end

