class DynamicProgramming

  def initialize
    @blair_cache = {
      1 => 1,
      2 => 2
    }

    @frog_cache = { 1 => [[1]], 2 => [[1, 1], [2]],
                    3 => [[1, 1, 1], [2, 1], [1, 2], [3]] }
  end

  def blair_nums(n)
    # @blair_cache[n] ||= blair_nums(n - 1) + blair_nums(n - 2) + 2 * n - 1
    return @blair_cache[n] if @blair_cache[n]

    ans = blair_nums(n - 1) + blair_nums(n - 2) + (2 * n - 1)
    @blair_cache[n] = ans
    return ans
  end

  def frog_hops_bottom_up(n)
    paths = []
        (1..3).each do |i|
          old_paths = frog_hops(n - i)
          old_paths.each do |path|
            path.unshift(1)
            paths << path
          end
        end

        frog_cache[n] = paths
        return paths
  end

  def frog_cache_builder(n)

  end

  def frog_hops_top_down(n)

  end

  def frog_hops_top_down_helper(n)

  end

  def super_frog_hops(n, k)

  end

  def knapsack(weights, values, capacity)

  end

  # Helper method for bottom-up implementation
  def knapsack_table(weights, values, capacity)

  end

  def maze_solver(maze, start_pos, end_pos)
  end
end
