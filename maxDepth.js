var maxDepth = function(root) {
    if (!root) {
        return 0;
    } else if (!root.left && !root.right) {
        return 1;
    } else {
        let left = maxDepth(root.left);
        let right = maxDepth(root.right);
        return (left > right ? left : right) + 1;
    }
};