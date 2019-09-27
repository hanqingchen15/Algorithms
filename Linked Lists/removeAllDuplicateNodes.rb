def delete_duplicates(head)
    return nil if head.nil?
    dummy = ListNode.new(0)
    dummy.next = head
    prev = dummy
    curr = head
    next_curr = curr.next
    while curr && curr.next
        if curr.val == curr.next.val
            until next_curr.nil? || next_curr.val != curr.val
                next_curr = next_curr.next
            end
            prev.next = next_curr
            curr = prev.next
            if curr
                next_curr = curr.next
            else
                break
            end
        else
            curr = curr.next
            prev = prev.next
            next_curr = curr.next
        end
    end
    return dummy.next
end