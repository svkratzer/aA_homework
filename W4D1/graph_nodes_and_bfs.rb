class GraphNode
  attr_accessor :neighbors
  attr_reader :value
  def initialize(value)
    @value = value
    @neighbors = []
  end

  def bfs(node, target_value)
    queue = [node]
    until queue.empty?
      el = queue.shift
      return el if el == target_value
      el.neighbors.each { |el| queue << el }
    end
    nil
  end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
# p bfs(a, "f")