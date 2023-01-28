# frozen_string_literal: true

class MinStack
  def initialize
    @stack = []
    @min_stack = []
  end

  def push(val)
    @stack.push(val)
    if @min_stack.empty?
      @min_stack.push(val)
    else
      @min_stack.push([val, @min_stack[-1]].min)
    end
  end

  def pop
    @min_stack.pop
    @stack.pop
  end

  def top
    @stack[-1]
  end

  def get_min
    @min_stack[-1]
  end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
