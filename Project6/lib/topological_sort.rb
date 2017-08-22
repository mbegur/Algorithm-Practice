require_relative 'graph'

# Implementing topological sort using both Khan's and Tarian's algorithms

def topological_sort(vertices)
  top = []
  sorted = []
  vertices.each do |el|
  top.unshift(el) if el.in_edges.empty?
  end

  while top.length > 0
    current = top.pop
    sorted << current
    until current.out_edges.empty?
      edge = current.out_edges.first
      neighbor = edge.to_vertex
      edge.destroy!
      if neighbor.in_edges.empty?
        top.unshift(neighbor)
      end
    end
    vertices.delete(current)
  end
  vertices.empty? ? sorted : []
end
