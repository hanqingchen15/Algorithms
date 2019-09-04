var buildTree = function(inorder, postorder) {
    if (postorder.length === 0 || inorder.length === 0) {
        return null;
    }
    let rootIdx = postorder.length - 1;
    let root = new TreeNode(postorder[rootIdx]);
        let inorderIdx = inorder.indexOf(root.val);
        let inorder_left = inorder.slice(0, inorderIdx);
        let inorder_right = inorder.slice(inorderIdx + 1, inorder.length);
        let postorder_left = postorder.slice(0, inorderIdx);
        let postorder_right = postorder.slice(inorderIdx, rootIdx);
        root.left = buildTree(inorder_left, postorder_left);
        root.right = buildTree(inorder_right, postorder_right);
    return root;
};