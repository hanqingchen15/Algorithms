### 167. Two Sum II
Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.

The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.

Note:

Your returned answers (both index1 and index2) are not zero-based. You may assume that each input would have exactly one solution and you may not use the same element twice.

URL: https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

#### Strategy
This can be solved using a two-pointer technique: one pointer at the beginning of the array, and one at the end. During each iteration, compare the sum of the two pointers against the target. If it is smaller, increment the first pointer. If it is larger, decrement the second pointer. 

#### Time Complexity
Worst case scenario, the two elements that sum to target are in the middle of the array. Therefore, time complexity is ***O(N)***