var nextLargerNodes = function(head) {
    let curr = head;
    let ans = [];
    let stack = [];
    for (let i = 0; curr; i += 1) {
        ans.push(0)
        while (stack.length > 0 && curr.val > stack[stack.length - 1][0]) {
            ans[stack.pop()[1]] = curr.val
        }
        stack.push([curr.val, i]);
        curr = curr.next
    }
    return ans;
};