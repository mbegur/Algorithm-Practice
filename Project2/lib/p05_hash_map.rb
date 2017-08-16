require_relative 'p02_hashing'
require_relative 'p04_linked_list'

class HashMap
  include Enumerable
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { LinkedList.new }
    @count = 0
  end

  def include?(key)
    new_key = key.hash
    @store[key.hash % num_buckets].include?(key)
  end

  def set(key, val)
    resize! if @count >= num_buckets
    new_key = key.hash
    if include?(key)
      @store[new_key % num_buckets].update(key, val)
    else
      @count += 1
      @store[new_key % num_buckets].append(key, val)
    end

  end

  def get(key)
    new_key = key.hash
    @store[new_key % num_buckets].get(key)
  end

  def delete(key)
    new_key = key.hash
    @store[new_key % num_buckets].remove(key)
    @count -= 1
  end

  def each
    @store.each do |link_list|
      link_list.each do |node|
        yield [node.key, node.val]
      end
    end
  end

  # uncomment when you have Enumerable included
  def to_s
    pairs = inject([]) do |strs, (k, v)|
      strs << "#{k.to_s} => #{v.to_s}"
    end
    "{\n" + pairs.join(",\n") + "\n}"
  end

  alias_method :[], :get
  alias_method :[]=, :set

  private

  def num_buckets
    @store.length
  end

  def resize!
    old_store = @store
   @store = Array.new(num_buckets * 2) { LinkedList.new }
   @count = 0

   old_store.each do |link_list|
     link_list.each do |node| set(node.key, node.val)
     end
   end

   #Why does this not work ???????????????????????????

    # new_store = Array.new(num_buckets * 2) { LinkedList.new }
    # @count = 0
    # @store.each do |link_list|
    #   link_list.each do |node|
    #     new_key = node.key.hash
    #     new_store[new_key % num_buckets].update(node.key, node.val)
    #     @count += 1
    #
    #   end
    # end
    # @store = new_store
  end

  def bucket(key)
    # optional but useful; return the bucket corresponding to `key`
  end
end
