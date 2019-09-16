def find_min(nums)
    l, r = 0, nums.length - 1
    while l <= r
        return nums[l] if l == r
        mid = l + (r - l) / 2
        return nums[mid] if nums[mid - 1] > nums[mid]
        return nums[mid + 1] if nums[mid] > nums[mid + 1]
        if nums[mid] > nums[r]
            l = mid + 1
        else
            r = mid - 1
        end
    end
end