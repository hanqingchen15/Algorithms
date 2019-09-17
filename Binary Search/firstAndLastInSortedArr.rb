def search_range(nums, target)
    res = []
    res << left_helper(nums, target)
    res << right_helper(nums, target)
    res
end

def right_helper(nums, target)
    idx = -1
    left = 0
    right = nums.length - 1
    while left <= right
        mid = left + (right - left) / 2
        if nums[mid] == target
            idx = mid
            left = mid + 1
        elsif nums[mid] > target
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return idx
end

def left_helper(nums, target)
    idx = -1
    left = 0
    right = nums.length - 1
    while left <= right
        mid = left + (right - left) / 2
        if nums[mid] == target
            idx = mid
            right = mid - 1
        elsif nums[mid] > target
            right = mid - 1
        else
            left = mid + 1
        end
    end
    return idx
end