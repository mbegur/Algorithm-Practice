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
