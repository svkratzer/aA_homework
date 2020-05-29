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
      if pair[0] == key
        pair[1] = value
        return
      end
    end
    @map << [key, value]
  end

  def get(key)
    @map.each do |pair|
      return pair if pair[0] == key
    end
    nil
  end

  def delete(key)
    @map.each_with_index do |pair, idx|
      @map.delete_at(idx) if pair[0] == key
    end
  end

  def show
    @map
  end

  def inspect
    @map
  end

end

