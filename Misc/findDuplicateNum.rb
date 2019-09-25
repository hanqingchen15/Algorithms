def find_duplicate(nums)
    slow = nums[0]
    fast = nums[slow]
    while slow != fast
        slow = nums[slow]
        fast = nums[fast]
        fast = nums[fast]
    end
    fast = 0
    while slow != fast
        slow = nums[slow]
        fast = nums[fast]
    end
    return slow
    
end