### Find Minimum Element in Rotated Array

Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e.,  [0,1,2,4,5,6,7] might become  [4,5,6,7,0,1,2]).

Find the minimum element.

You may assume no duplicate exists in the array.

URL: https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

#### Strategy
We know that the given array has been sorted in ascending order, then rotated once around an axis. Therefore, the minimum element would be the inflection point (idx) of the array, where arr[idx - 1] > min element and arr[idx + 1] > min element. With this information we can use a modified form of binary search to get the answer. When we have computed the middle pivot, we first check whether the inflection point lies to the left, right, or is the pivot itself. Then, if the middle pivot is greater than the right bound, we know that the array's inflection point is to the right of the middle pivot. 


#### Time Complexity
Since this is a modified form of binary search, the time complexity is ***O(logN)***