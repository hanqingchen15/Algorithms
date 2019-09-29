var isPalindrome = function(head) {
    if (!head || !head.next) {
        return true;
    }
    let slow = head;
    let fast = head.next;
    while (fast && fast.next) {
        slow = slow.next;
        fast = fast.next.next;
    }
    let reversedList = reverse(slow.next);
    let p1 = head;
    let p2 = reversedList;
    let isPalin = true;
    while (p2) {
        if (p1.val != p2.val) {
            isPalin = false;
        }
        p1 = p1.next;
        p2 = p2.next;
    };
    slow.next = reverse(reversedList);
    
    return isPalin;
};

var reverse = function(head) {
    if (!head || !head.next) {
        return head;
    }
    let prev = null;
    let curr = head;
    while (curr) {
        let forward = curr.next
        curr.next = prev;
        
        prev = curr;
        curr = forward;
    }
    return prev;
}