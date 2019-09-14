### Find Peak Element
A peak element is an element that is greater than its neighbors.

Given an input array nums, where nums[i] ≠ nums[i+1], find a peak element and return its index.

The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.

You may imagine that nums[-1] = nums[n] = -∞.

For elements at the beginning and end of the array, they are compared with their only neighbor (the next and previous element, respectively).

Example 1:

Input: nums = [1,2,3,1]
Output: 2
Explanation: 3 is a peak element and your function should return the index number 2.
Example 2:

Input: nums = [1,2,1,3,5,6,4]
Output: 1 or 5 
Explanation: Your function can return either index number 1 where the peak element is 2, or index number 5 where the peak element is 6.

Note:
Your solution should be in logarithmic complexity.

URL: https://leetcode.com/problems/find-peak-element/

#### Strategy
We can find the peaks using a modified form of binary search. When we have found the middle element, we can compare it to the element on the right. If the element on the right is bigger, than we know that a peak in the local scope lies in the right sub array. Therefore, we can repeat the algorithm again, but this time setting left bound as mid + 1. If the right element is smaller, we know that the local peak lies to the left, and can therefore repeat the algorithm by setting right bound as mid index. When the left and right bound are both the same index, we know that we have found the local peak index. 

#### Time Complexity
***O(N)*** as in the worst case scenario the array is in ascending order, which means the peak is the last element of the array. 