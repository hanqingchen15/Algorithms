var flatten = function(head) {
    return helperFlatten(head, null);
};

var helperFlatten = function(head, tail = null) {
    let curr = head;
    let last;
    while (curr) {
        if (curr.child) {
            let after = curr.next;
            curr.child.prev = curr;
            curr.next = helperFlatten(curr.child, after);
            curr.child = null;
            if (after) {
                curr = after.prev;
            }
        }
        if (!curr.next) {
            last = curr;
        }
        curr = curr.next;
    }
    if (tail) {
        last.next = tail;
        tail.prev = last;
    }
    return head;
};