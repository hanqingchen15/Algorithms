var addTwoNumbers = function(l1, l2) {
    let stack1 = []
    let stack2 = []
    while (l1 || l2) {
        if (!l1) {
            stack2.push(l2.val);
            l2 = l2.next;
        } else if (!l2) {
            stack1.push(l1.val);
            l1 = l1.next;
        } else {
            stack1.push(l1.val);
            stack2.push(l2.val);
            l1 = l1.next;
            l2 = l2.next;
        }
    }
    let prev
    let curr
    let carry = 0;
    while (stack1.length > 0 || stack2.length > 0) {
        let n = 0;
        if (stack2.length == 0) {
            n = stack1.pop() + carry;
        } else if (stack1.length == 0) {
            n = stack2.pop() + carry;
        } else {
            n = stack1.pop() + stack2.pop() + carry;
        }
        if (n >= 10) {
            carry = 1;
            n -= 10;
        } else {
            carry = 0;
        }
        curr = new ListNode(n);
        curr.next = prev;
        prev = curr;
    }
    if (carry == 1) {
        curr = new ListNode(1);
        curr.next = prev;
    }
    return curr;
};