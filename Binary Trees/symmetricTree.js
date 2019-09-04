var isSymmetric = function(root) {
    if (!root || (!root.left && !root.right)) {
        return true;
    } else if (!root.left || !root.right) {
        return false;
    }
    let queue = [root.left, root.right];
    let nextQ = [];
    while (queue.length > 0) {
        let left = queue.shift();
        let right = queue.pop();
        if (!left && !right) {
            
        } else if (!left || !right) {
            return false
        } else if (left.val != right.val) {
            return false;
        } else {
            nextQ.push(right.left);
            nextQ.push(right.right);
            nextQ.unshift(left.right);
            nextQ.unshift(left.left); 
        }

        if (queue.length === 0 && nextQ.length != 0)  {
            queue = nextQ;
            nextQ = [];
        }
    }
    return true;
};