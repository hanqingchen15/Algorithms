### 34. Find First and Last Position of Element in Sorted Array

Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.

Your algorithm's runtime complexity must be in the order of O(log n).

If the target is not found in the array, return [-1, -1].

**Example:** Input: nums = [5,7,7,8,8,10], target = 8

Output: [3,4]

URL: https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/

#### Strategy
One method would be to use binary search twice, once to find the left-most index where the target === arr[idx_left], another to find the right-most index where the target === arr[idx_right]. For each algorithm, instead of a regular binary search, once we find a mid index where target === mid, we store the mid index as a potential result in memory. Then, we continue the binary search algorithm. 


#### Time Complexity
Since we are essentially running binary search twice, time complexity is ***O(logN)***