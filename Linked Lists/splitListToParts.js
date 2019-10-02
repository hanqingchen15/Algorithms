var splitListToParts = function(root, k) {
    let curr = root;
    let length = 0;
    
    while (curr) {
        length += 1;
        curr = curr.next;
    }
    
    let result = [];
    let remainder = length % k;
    let eachLength = Math.floor(length / k);
    let prev = null;
    
    curr = root;
    for (let i = 0; i < k; i += 1) {
        result.push(curr);
        for (let j = 0; j < eachLength && curr; j += 1) {
            if (curr) {
                prev = curr;
                curr = curr.next;
            }
        }
        if (remainder > 0 && curr) {
            prev = curr;
            curr = curr.next;
            remainder -= 1;
        };
        if (prev){
            prev.next = null
        };
    }
    return result;
};