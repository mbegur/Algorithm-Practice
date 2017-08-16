require_relative "static_array"

class DynamicArray
  attr_reader :length

  def initialize
    @length = 0
    @capacity = 8
    @store = StaticArray.new(@capacity)
  end

  # O(1)
  def [](index)
    raise 'index out of bounds' if index < 0 || index > self.length - 1
    @store[index]
  end

  # O(1)
  def []=(index, value)
    raise 'index out of bounds' if index < 0 || index > self.length - 1
    @store[index] = value
  end

  # O(1)
  def pop
    raise 'index out of bounds' if self.length < 1
    popped = self[length - 1]
    @length -= 1
    popped

  end

  # O(1) ammortized; O(n) worst case. Variable because of the possible
  # resize.
  def push(val)
    resize! if self.length == @capacity
    @length += 1
    @store[@length - 1] = val
  end

  # O(n): has to shift over all the elements.
  def shift
    raise "index out of bounds" if self.length == 0
    shifted = self[0]
    i = 1
    until i === self.length
      self[i - 1] = self[i]
      i += 1
    end
    @length -= 1
    shifted

  end

  # O(n): has to shift over all the elements.
  def unshift(val)
    resize! if length == capacity
    @length += 1
    i = self.length - 2
    until i < 0
      self[i + 1] = self[i]
      i -= 1
    end
    self[0] = val
  end

  protected
  attr_accessor :capacity, :store
  attr_writer :length

  def check_index(index)
  end

  # O(n): has to copy over all the elements to the new store.
  def resize!
    new_store = StaticArray.new(@capacity * 2)

    i = 0
    until i == @length
      new_store[i] = self[i]
      i += 1
    end

    @capacity *= 2
    @store = new_store


  end
end
