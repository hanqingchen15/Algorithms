def sum_numbers(root)
    helper(root, 0)
end

def helper(root, n)
    return 0 if root.nil?
    n = n * 10
    return root.val + n if root.left.nil? && root.right.nil?
    return helper(root.left, root.val + n) + helper(root.right, root.val + n)
end