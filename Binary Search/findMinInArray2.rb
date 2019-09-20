def find_min(nums)
    left, right = 0, nums.length - 1
    while left < right
        mid = left + (right - left) / 2
        if nums[mid] < nums[right]
            right = mid
        elsif nums[mid] > nums[right]
            left = mid + 1
        else
        right -= 1
        end
    end
    return nums[left]
end