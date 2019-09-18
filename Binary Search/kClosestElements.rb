def find_closest_elements(arr, k, x)
    if x < arr[0]
        return arr[0...k]
    elsif x > arr[-1]
        return arr[arr.length - k..-1]
    end
    res = []
    left = 0
    right = arr.length - 1
    while left <= right
        mid = left + (right - left) / 2
        if arr[mid] == x || (arr[mid] <= x && arr[mid + 1] > x)
            if arr[mid] == x
                res << x
                left = mid - 1
                right = mid + 1
            elsif (arr[mid] - x).abs <= (arr[mid + 1] - x).abs
                res << arr[mid]
                left = mid - 1
                right = mid + 1
            else
                res << arr[mid + 1]
                left = mid
                right = mid + 2
            end
            while res.length < k
                if left >= 0 && right < arr.length
                    if (arr[left] - x).abs <= (arr[right] - x).abs
                        res.unshift(arr[left])
                        left -= 1
                    else
                        res.push(arr[right])
                        right += 1
                    end
                elsif left >= 0
                    res.unshift(arr[left])
                    left -= 1
                else
                    res.push(arr[right])
                    right += 1
                end
            end
            return res
        elsif arr[mid] < x
            left = mid + 1
        else
            right = mid - 1
        end
    end
end