def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |el, idx|
        if hash[el]
            return [hash[el], idx]
        else
            hash[target - el] = idx
        end
    end
end

def sorted_array_to_bst(nums)
    return nil if nums.length == 0
    # return TreeNode.new(nums[0]) if nums.length == 1
    mid = nums.length / 2
    root = TreeNode.new(nums[mid])
    root.left = sorted_array_to_bst(nums[0...mid])
    root.right = sorted_array_to_bst(nums[mid+1..-1])
    root
end

def rotateMatrix(a)
    new_matrix = []
    n = a.length
    n.times do |i|
        new_row = []
        x = n - 1
        until x < 0
            new_row << a[x][i]
              x -= 1
        end
        new_matrix << new_row
    end
    new_matrix
end

def reverse_string(str)
  return "" if str.length == 0
  return str[-1] + reverse_string(str[0..-2])
end

puts reverse_string("hello")
