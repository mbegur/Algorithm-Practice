# Given an Array of tuples, where tuple[0] represents a package id,
# and tuple[1] represents its dependency, determine the order in which
# the packages should be installed. Only packages that have dependencies
# will be listed, but all packages from 1..max_id exist.

# N.B. this is how `npm` works.

# Import any files you need to

require_relative 'topological_sort'

require_relative 'graph'

def install_order(arr)
  vertices = {}
  arr.each do |el|
    vertices[el[0]] = Vertex.new(el[0]) unless vertices[el[0]]
    vertices[el[1]] = Vertex.new(el[1]) unless vertices[el[1]]
    Edge.new(vertices[el[1]], vertices[el[0]])
  end

  max_vert = vertices.keys.max
  all_vertices = (1..max_vert).to_a
  disconnected = all_vertices.reject { |el| vertices.keys.include?(el) }

  disconnected + topological_sort(vertices.values).map(&:value)
end

p install_order([[3, 1], [2, 1], [6, 5], [3, 6], [3, 2], [4, 3], [9, 1]])

def install_order2(arr)
  vertices = {}
  arr.each do |el|
  end
  
end
