def prune_tree(root)
    return nil if root.nil?
    root.left = prune_tree(root.left)
    root.right = prune_tree(root.right)
    if root.left.nil? && root.right.nil?
        if root.val == 0
            return nil
        end
    end

    return root
end