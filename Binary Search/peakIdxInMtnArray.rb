def peak_index_in_mountain_array(a)
    l = 0
    r = a.length - 1
    while l <= r
        return l if l == r
        m = l + (r - l) / 2
        if a[m] < a[m + 1]
            l = m + 1
        else
            r = m
        end
    end
end