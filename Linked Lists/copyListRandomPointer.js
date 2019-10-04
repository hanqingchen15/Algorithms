var copyRandomList = function(head) {
    let map = new Map();
    let curr1 = head;
    let dummy = new Node(true);
    let curr2 = dummy;
    while (curr1) {
        map.set(curr1, new Node(curr1.val, null, null));
        curr1 = curr1.next;
    };
    curr1 = head;
    while (curr1) {
        curr2.next = map.get(curr1);
        curr2 = curr2.next;
        let rand = map.get(curr1.random);
        if (rand === undefined) {
            rand = null;
        }
        curr2.random = rand;
        
        curr1 = curr1.next;
    }
    return dummy.next;
};