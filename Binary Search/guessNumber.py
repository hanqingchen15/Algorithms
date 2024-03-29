# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num):

class Solution(object):
    def guessNumber(self, n):
        """
        :type n: int
        :rtype: int
        """
        left = 0
        right = n
        while left <= right:
            mid = int(left + (right - left) / 2)
            if self.guess(mid) == 0:
                return mid
            elif self.guess(mid) == 1:
                left = mid + 1
            else:
                right = mid - 1

    def guess(self, n):
        #guess API placeholder
        return 'something'