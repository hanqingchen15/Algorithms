var oddEvenList = function(head) {
    if (!head || !head.next) {
        return head;
    }
    let odd = head;
    let even = head.next;
    let bridge = head.next;
    while (odd && even) {
        let next = even.next;
        odd.next = next;
        
        if (next) {
            even.next = next.next;
            odd = odd.next;
            even = even.next;
        } else {
            break;
        }
    }
    odd.next = bridge;
    return head;
};