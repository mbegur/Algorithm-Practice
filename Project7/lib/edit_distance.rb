#Edit Distance: min number of steps required to transform any string s,
#to other string

#1 insertion 'ab' --> 'acb'
#2 deletion 'ab' --> 'b'
#3 mutation 'ab' --> 'ac'


def editDistance(str1, str2)
  m = str1.length
  n = str1.length
  if m == 0
    return n
  elsif n == 0
    return m
  elsif str1[-1] == str2[-1]
    return editDistance(str1[0...-1], str2[0...-1])
  else
    costs = [
      editDistance(str1, str2[0...-1]),
      editDistance(str1[0...-1], str2),
      editDistance(str1[0...-1], str2[0...-1])
    ]
    return 1 + costs.min
  end

end

puts editDistance('geek', 'geessk')

def ed(s, t)
  m = Array.new(s.length + 1) do |i|
    [i]
  end
  m[0] = (0...t.length + 1).to_a
  (1..s.length).each do |i|
    (1..t.length).each do |j|
      if s[i - 1] == t[j - 1]
        m[i][j] = m[i - 1][j - 1]
      else
        min = [m[i-1][j-1], m[i][j-1], m[i-1][j]].min
        m[i][j] = min + 1
      end
    end
  end
  m[-1][-1]


end

puts ed('apple', 'purple')
