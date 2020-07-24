class Queue
    attr_reader :queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end
end


q = Queue.new

q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
q.enqueue(4)
q.enqueue(5)
q.enqueue(6)
p q
puts "-----"
p q.dequeue
puts "-----"
p q
puts "-----"
p q.peek



