def intersect(nums1, nums2)
    hash = Hash.new(0)
    nums1.each do |num|
        hash[num] += 1
    end
    res = []
    nums2.each do |num|
        if hash[num] && hash[num] > 0
            res << num
            hash[num] -= 1
        end
    end
    return res
end