def del_nodes(root, to_delete)
    return [] if root.nil?
    if root && to_delete.include?(root.val)
        return del_nodes(root.left, to_delete) + del_nodes(root.right, to_delete)
    end
    res = [root]
    level = [root]
    next_level = []
    go_on = false
    while !level.empty?
        node = level.shift
        if node
            if node.left
                if to_delete.include?(node.left.val)
                    temp = node.left
                    node.left = nil
                    res.concat(del_nodes(temp.left, to_delete))
                    res.concat(del_nodes(temp.right, to_delete))
                else
                    go_on = true
                    next_level.push(node.left)
                end
            end
            if node.right
                if to_delete.include?(node.right.val)
                    temp = node.right
                    node.right = nil
                    res.concat(del_nodes(temp.left, to_delete))
                    res.concat(del_nodes(temp.right, to_delete))
                else
                    go_on = true
                    next_level.push(node.right)
                end
            end
        end
        if go_on && level.empty?
            level = next_level
            next_level = []
            go_on = false
        end
    end
    return res
end