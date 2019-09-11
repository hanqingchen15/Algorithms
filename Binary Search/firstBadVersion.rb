# The is_bad_version API is already defined for you.

def first_bad_version(n)
    left = 0
    right = n
    while left <= right
        mid = left + (right - left) / 2
        if is_bad_version(mid)
            if mid == 0 || !is_bad_version(mid - 1)
                return mid
            else
                right = mid - 1
            end
        else
            left = mid + 1
        end
    end
    return -1
end