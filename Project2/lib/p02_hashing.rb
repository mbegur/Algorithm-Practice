class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    res = 0
    self.each_with_index do |el, idx|
      res += (el.hash * idx.hash)
    end
    res
  end
end

class String
  def hash
    self.chars.map(&:ord).hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    arr = []
    self.keys.each_with_index do |key, idx|
      val = self.values[idx].to_s + key.to_s
      arr << val.ord
    end
    arr.sort.hash
  end
end
