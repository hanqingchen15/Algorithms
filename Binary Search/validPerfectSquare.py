class Solution(object):
    def isPerfectSquare(self, num):
        """
        :type num: int
        :rtype: bool
        """
        min = 1
        max = num
        while min <= max:
            mid = min + (max - min) // 2
            if mid ** 2 == num:
                return True
            elif mid ** 2 < num:
                min = mid + 1
            else:
                max = mid - 1
        return False