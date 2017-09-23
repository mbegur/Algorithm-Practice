#
# In order to get neighbor coordinates:
#
# [x - 1, y - 1], [x - 1, y], [x - 1, y + 1]
# [x, y - 1]    ,   SELF    , [x, y + 1]
# [x + 1, y - 1], [x + 1, y], [x + 1, y + 1]


def count_islands(matrix)
  rows = matrix.length
  cols = matrix[0].length
  visited = Array.new(rows) { Array.new(cols) }

  # Initialize count as 0 and traverse through all
  # cells of the given matrix
  count = 0
  (0...rows).each do |row|
    (0...cols).each do |col|

      # If a cell with a true value is not visited yet,
      # then new island is found
      if !visited[row][col] && matrix[row][col]
        # Visit all cells in this island
        # increment island count

        visit_island(row, col, visited, matrix)
        count += 1
      end
    end
  end

  count
end

def visit_island(row, col, visited, matrix)
  neighbor_row = [-1, -1, -1, 0, 0, 1, 1, 1]
  neighbor_col = [-1, 0, 1, -1, 1, -1, 0, 1]

  visited[row][col] = true

  (0...8).each do |idx|
    if is_island(row + neighbor_row[idx], col + neighbor_col[idx], visited, matrix)
      visit_island(row + neighbor_row[idx], col + neighbor_col[idx], visited, matrix)
    end
  end
end

def is_island(row, col, visited, matrix)
  return (row >= 0 && row < matrix.length) && (col >= 0 && col < matrix[0].length) && (matrix[row][col] && !visited[row][col])
end
