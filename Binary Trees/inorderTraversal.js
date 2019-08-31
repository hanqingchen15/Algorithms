var inorderTraversal = function(root) {
    if (root === null) {
        return []
    } else if (root.left === null && root.right === null) {
        return [root.val]
    } else {
        return inorderTraversal(root.left).concat([root.val].concat(inorderTraversal(root.right)))
    }
};