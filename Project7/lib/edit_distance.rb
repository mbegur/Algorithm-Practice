def editDistance(str1, str2)
  m = str1.length
  n = str1.length
  if m == 0
    return n
  elsif n == 0
    return m
  elsif str1.last == str2.last
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

puts editDistance('geek', 'geesk')
