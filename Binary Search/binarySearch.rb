def b_search_iterative(nums, target)
    pivot = 0
    left = 0
    right = nums.length - 1
    while left <= right
        pivot = (left + right) / 2
        if nums[pivot] === target
            return pivot
        elsif nums[pivot] > target
            right = pivot - 1
        else
            left = pivot + 1
        end
    end
    return -1
end

def b_search_recursive(arr, target)
    return -1 if arr.empty?
    pivot = arr.length / 2
    left = nil
    right = nil
    if arr[pivot] == target
      return pivot
    elsif arr[pivot] > target
      left = b_search_recursive(arr[0...pivot], target)
    else
      right = b_search_recursive(arr[pivot + 1..-1], target)
    end
    if left == -1 || right == -1
      return -1
    elsif left.nil?
      return pivot + right + 1
    else
      return left
    end
  end