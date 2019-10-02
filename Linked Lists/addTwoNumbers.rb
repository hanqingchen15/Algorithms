def add_two_numbers(l1, l2)
    dummy = ListNode.new(true)
    curr = dummy
    carry = 0
    while l1 || l2
        sum = carry
        sum += l1.val if l1
        sum += l2.val if l2
        if sum >= 10
            sum %= 10
            carry = 1
        else
            carry = 0
        end
        curr.next = ListNode.new(sum)
        curr = curr.next
        l1 = l1.next if l1
        l2 = l2.next if l2
    end
    if carry > 0
        curr.next = ListNode.new(carry)
    end
    return dummy.next
        
end