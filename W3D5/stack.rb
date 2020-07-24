  class Stack
    def initialize
        @array = []
    end

    def push(el)
        # adds an element to the stack
        @array.push(el)
        el
    end

    def pop
         # removes one element from the stack
        @array.pop(1)
    end

    def peek
        return @array[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end

s = Stack.new
s.push(1)
s.push(2)
s.push(3)
s.push(4)
s.push(5)
p s.push(6)
p s
s.pop
p s
p s.peek
p s


