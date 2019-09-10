def my_sqrt(x)
    left = 1
    right = x
    ans = 0
    while left <= right
        mid = left + (right - left)/2
        p(mid)
        if x / mid == mid
            return mid
        elsif x / mid > mid
            ans = mid
            left = mid + 1
        else
            right = mid - 1
        end
    end
    return ans
end