var preorderTraversal = function(root) {
    if (root === null) {
        return [];
    } else if (root.left === null && root.right === null) {
        return [root.val];
    } else {
        return [root.val].concat(preorderTraversal(root.left).concat(preorderTraversal(root.right)));
    }
};