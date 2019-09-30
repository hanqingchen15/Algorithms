var partition = function(head, x) {
    let dummy = new ListNode(true);
    let prev = dummy;
    prev.next = head;
    let curr = head;
    
    let dummy2 = new ListNode(true);
    let curr2 = dummy2;
    
    while (curr) {
        if (curr.val >= x) {
            prev.next = curr.next;
            curr.next = null;
            curr2.next = curr;
            curr2 = curr2.next
            curr = prev.next;
        } else {
            prev = curr;
            curr = curr.next;
        }
    }
    prev.next = dummy2.next;
    return dummy.next;
};