class GraphNode
  attr_accessor :neighbors
  attr_reader :value
  def initialize(value)
    @value = value
    @neighbors = []
  end
end

def bfs(node, target_value)
  visited = []
  queue = [node]
  until queue.empty?
    el = queue.shift
    visited << el
    return el if el.value == target_value
    el.neighbors.each { |neighbor| queue << neighbor unless visited.include?(neighbor) }
  end
  nil
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
p bfs(a, "f")