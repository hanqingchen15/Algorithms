var hasPathSum = function(root, sum) {
    if (root === null) {
        return false;
    } else if (!root.left && !root.right && sum === root.val) {
        return true;
    };
    return(
        hasPathSum(root.left, sum - root.val) || hasPathSum(root.right, sum - root.val)
    )
};