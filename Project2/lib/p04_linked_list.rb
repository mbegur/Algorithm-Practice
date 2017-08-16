class Node
  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
  end
end

class LinkedList
  include Enumerable
  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
    @tail.prev = @head
  end

  def [](i)
    each_with_index { |node, j| return node if i == j }
    nil
  end

  def first
    return nil if self.empty?
    @head.next
  end

  def last
    return nil if self.empty?
    @tail.prev
  end

  def empty?
    @head.next == @tail
  end

  def get(key)
    self.each do |el|
      return el.val if el.key === key
    end
  end

  def include?(key)
    self.each do |el|
      return true if el.key == key
    end
    false
  end

  def append(key, val)
    node = Node.new(key, val)
    @tail.prev.next = node
    node.prev = @tail.prev

    @tail.prev = node

    node.next = @tail

  end

  def update(key, val)
    self.each do |el|
      if el.key == key
        el.val = val
      end
    end

  end

  def remove(key)
    self.each do |el|
      if el.key == key
        el.prev.next = el.next
        el.next.prev = el.prev
      end
    end
  end

  def each
    node = @head.next
    while node != @tail
      yield node
      node = node.next
    end

  end

  # uncomment when you have `each` working and `Enumerable` included
  def to_s
    inject([]) { |acc, node| acc << "[#{node.key}, #{node.val}]" }.join(", ")
  end
end
