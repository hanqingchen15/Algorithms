def stretch(root, k)
    return nil if root.nil?
    return helper(root, k, 'left')
end

def helper(root, k, dir)
    new_val = root.val / k
    root.val = new_val
    pointer = root
    if root.left.nil? && root.right.nil?
        i = 1
        while i < k
            if dir == 'left'
                pointer.left = TreeNode.new(new_val)
                pointer = pointer.left
            else
                pointer.right = TreeNode.new(new_val)
                pointer = pointer.right
            end
            i += 1
        end
    elsif root.right.nil?
        temp = root.left
        i = 1
        while i < k
            if dir == 'left'
                pointer.left = TreeNode.new(new_val)
                pointer = pointer.left
            else
                pointer.right = TreeNode.new(new_val)
                pointer = pointer.right
            end
            i += 1
        end
        pointer.left = helper(temp, k, 'left')
    elsif root.left.nil?
        temp = root.right
        i = 1
        while i < k
            if dir == 'left'
                pointer.left = TreeNode.new(new_val)
                pointer = pointer.left
            else
                pointer.right = TreeNode.new(new_val)
                pointer = pointer.right
            end
            i += 1
        end
        pointer.right = helper(temp, k, 'right')
    else
        temp_left = root.left
        temp_right = root.right
        i = 1
        while i < k
            if dir == 'left'
                pointer.left = TreeNode.new(new_val)
                pointer = pointer.left
            else
                pointer.right = TreeNode.new(new_val)
                pointer = pointer.right
            end
            i += 1
        end
        pointer.left = helper(temp_left, k, 'left')
        pointer.right = helper(temp_right, k, 'right')
    end
    return root
end

class TreeNode
    attr_accessor :val, :right, :left
    def initialize(val)
        @val = val
        @left = nil
        @right = nil
    end
end

root = TreeNode.new(12)
root.left = TreeNode.new(81)
root.right = TreeNode.new(34)
root.left.right = TreeNode.new(56)
root.right.left = TreeNode.new(19)
root.right.right = TreeNode.new(6)


def level(root)
    level = [root]
    next_lev = []
    go_on = false
    res = []
    temp = []
    while !level.empty?
        node = level.shift
        if node
            temp << node.val
            next_lev << node.left
            next_lev << node.right
            go_on = true
        else
            temp << nil
        end
        if level.empty? && go_on
            level = next_lev
            next_lev = []
            res << temp
            temp = []
            go_on = false
        end
    end
    return res
end

new_root1 = stretch(root, 2)

bfs_nr1 = level(new_root1)
p(bfs_nr1)