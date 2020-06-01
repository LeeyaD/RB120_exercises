class CircularQueue
  #obj instantiated w/ 1 attribute, buffer_size
  # and 2 methods:
  #enqueue - to add an obj to the queue
  #dequeue - to remove (and return) the oldest obj from the queue. Should return nil if the queue is empty

  # You may assume that none of the values stored in the queue are nil (however, nil may be used to designate empty spots in the buffer).

  def initialize(buffer_size)
    @buffer_size = buffer_size
    @array = Array.new
  end

  def enqueue(value)

  end

  def dequeue

  end
end
queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil