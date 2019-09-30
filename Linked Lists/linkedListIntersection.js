var getIntersectionNode = function(headA, headB) {
    if (!headA || !headB) {
        return null;
    }
    let pA = headA;
    let pB = headB;

    while (true) {
        if (pA == pB) {
            if (pA) {
                return pA
            } else {
                return null;
            }
        }
        pA = pA.next;
        pB = pB.next;
        
        if (!pA && pB) {
            pA = headB;
        }
        if (!pB && pA) {
            pB = headA;
        }
    }
};