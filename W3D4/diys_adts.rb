# EXERCISE 1

class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack.push(el)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def inspect
    @stack
  end

end

# EXERCISE 2

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

  def inspect
    @queue
  end

end

# EXERCISE 3

class Map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do |pair|
      pair[1] = value if pair[0] == key
      return
    end
    @map << [key, value]
  end

  def get(key)

  end

  def delete(key)

  end

  def show
    @map
  end

end

map = Map.new
map.set("ferret", 1)
map.set("dog", 2)
map.set("cat", 3)
map.set("parrot", 4)
p map.show