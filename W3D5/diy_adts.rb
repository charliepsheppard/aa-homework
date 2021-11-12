class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[-1]
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[-1]
  end
end

class Map
  def initialize
    @map = []
  end

  def set(key, val)
    if @map.any? { |pair| pair[0] == key }
      raise "Already exists"
    else
      @map << [key, val]
    end
  end

  def get(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
  end

  def delete(key)
    @map.each_with_index do |pair, i|
      if pair[0] == key
        @map.delete_at(i)
      end
    end
  end

  def show
    @map[-1]
  end
end
