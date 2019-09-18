def next_greatest_letter(letters, target)
    if letters[-1] <= target
        return letters[0]
    end
    
    left = 0
    right = letters.length - 1
    while left <= right
        mid = left + (right - left) / 2
        if letters[mid] > target
            if letters[mid - 1] <= target || mid == 0
                return letters[mid]
            else
                right = mid - 1
            end
        else
            left = mid + 1
        end
    end
end