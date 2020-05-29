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