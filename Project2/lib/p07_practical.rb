require_relative 'p05_hash_map'

def can_string_be_palindrome?(string)
  hashmap = HashMap.new(string.length)
  hashmap.set(string[0], 0)
  string[1..-1].each_char do |ch|
    if hashmap.get(ch)
      val = hashmap.get(ch)
    else
      val = 0
    end
    hashmap.set(ch, val)
  end

  odd_count = 0

  hashmap.each do |k, v|
    odd_count += 1 if v % 2
  end
  odd_count > 1
end
