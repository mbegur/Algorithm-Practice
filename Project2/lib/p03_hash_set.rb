require_relative 'p02_hashing'

class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)

    resize! if @count == num_buckets
    unless self.include?(key)
      @count += 1
      new_key = key.hash
      self[new_key] << key
    end
  end

  def include?(key)
    new_key = key.hash
    self[new_key].include?(key)
  end

  def remove(key)
    new_key = key.hash
    self[new_key].delete(key) if self.include?(key)

  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    bucket = num % num_buckets
    @store[bucket]
  end

  def num_buckets
    @store.length
  end

  def resize!
    new_store = Array.new(num_buckets * 2) { Array.new }
    @store.each do |bucket|
      bucket.each do |el|
        new_el = el.hash
        new_store[new_el % (num_buckets * 2)] << el
      end
    end
    @store = new_store
  end
end
