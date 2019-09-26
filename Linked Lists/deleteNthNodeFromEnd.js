var removeNthFromEnd = function(head, n) {
    let count = 0;
    let curr = head;
    let forward = head;
    while (forward) {
        forward = forward.next;
        if (count > n) {
            curr = curr.next
        }
        count += 1
    }
    if (count == n) {
        return head.next
    }
    curr.next = curr.next.next
    return head;
};