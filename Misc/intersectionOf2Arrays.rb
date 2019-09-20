def intersection(nums1, nums2)
    hash = Hash.new()
    res = []
    nums1.each do |num|
        hash[num] = true
    end
    nums2.each do |num|
        if hash[num]
            res << num
            hash[num] = false
        end
    end
    return res
end