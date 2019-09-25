class Solution(object):
    def detectCycle(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        if head is None or head.next is None:
            return None
        isCycle = False
        slow = fast = head
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            if fast == slow:
                isCycle = True
                break
        if not isCycle:
            return None
        slow = head
        while slow != fast:
            slow = slow.next
            fast = fast.next
        return slow