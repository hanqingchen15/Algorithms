var levelOrder = function(root) {
    let res = [];
    let queue = [];
    let qVal = [];
    let nextQ = [];
    let nextQVal = [];
    if (root) {
        queue = [root];
        qVal = [root.val];
    }
    while (queue.length != 0) {
        for (let i = 0; i < queue.length; i += 1) {
            if (queue[i].left) {
                nextQ.push(queue[i].left);
                nextQVal.push(queue[i].left.val);
            };
            if (queue[i].right) {
                nextQ.push(queue[i].right);
                nextQVal.push(queue[i].right.val);
            };
        }
        res.push(qVal);
        queue = nextQ;
        qVal = nextQVal;
        nextQ = [];
        nextQVal = [];
    }
    return res;
};