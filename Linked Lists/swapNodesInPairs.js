var swapPairs = function(head) {
    if (!head || !head.next) {
        return head;
    }
    const dummy = new ListNode(true);
    let prev = dummy;
    let curr = head;
    while (curr && curr.next) {
        let next = curr.next;
        curr.next = next.next;
        prev.next = next;
        next.next = curr;
        
        prev = curr;
        curr = curr.next;
    }
    return dummy.next;
};