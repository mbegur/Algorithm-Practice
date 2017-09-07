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
