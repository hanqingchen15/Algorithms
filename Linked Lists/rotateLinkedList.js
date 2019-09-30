var rotateRight = function(head, k) {
    if (k == 0 || !head || !head.next) {
        return head;
    }
    let pointer = head;
    let length = 0;
    while (pointer) {
        length += 1
        pointer = pointer.next;
    }
    k = k % length;
    if (k == 0) {
        return head;
    }
    let dummy = new ListNode(true);
    dummy.next = head;
    let slow = head;
    let fast = head;
    while (fast.next) {
        fast = fast.next;
        if (k <= 0) {
            slow = slow.next
        }
        k -= 1;
    }
    dummy.next = slow.next;
    fast.next = head;
    slow.next = null;
    return dummy.next
};