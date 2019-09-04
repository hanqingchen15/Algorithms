def postorder_traversal(root)
    if root.nil?
        return []
    elsif root.left.nil? && root.right.nil?
        return [root.val] 
    else
        return (postorder_traversal(root.left)).concat(postorder_traversal(root.right)).concat([root.val])
    end
end