var reorderList = function(head) {
    // let curr = head;
    // let stack = [];
    // while (curr) {
    //     stack.push(curr);
    //     curr = curr.next;
    // }
    // while (stack.length > 0) {
    //     let left = stack.shift()
    //     let right = stack.pop();
    //     left.next = right;
    //     if (right) {
    //         right.next = stack[0]
    //     }
    // }
    // return head;
    if (!head || !head.next) {
        return head;
    }
    let fast = head;
    let slow = head;
    while (fast && fast.next) {
        slow = slow.next;
        fast = fast.next.next;
    }
    let reversedList = reverse(slow.next);
    slow.next = null;
    let p1 = head;
    let p2 = reversedList;
    while (p1 && p2) {
        let p1Temp = p1.next;
        p1.next = p2;
        p1 = p1Temp;
        let p2Temp = p2.next;
        p2.next = p1;
        p2 = p2Temp;
    }
    return head;
};

var reverse = function(head) {
    if (!head || !head.next) {
        return head;
    }
    let prev = null;
    let curr = head;
    while (curr) {
        let forward = curr.next;
        curr.next = prev;
        
        prev = curr;
        curr = forward;
    }
    return prev;
}