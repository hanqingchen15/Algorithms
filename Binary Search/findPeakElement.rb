def find_peak_element(nums)
    left = 0
    right = nums.length - 1
    while left <= right
        return left if left == right
        mid = left + (right - left) / 2
        if nums[mid] < nums[mid + 1]
            left = mid + 1
        else
            right = mid
        end
    end
    return -1
end