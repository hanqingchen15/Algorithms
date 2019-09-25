### 287. Find the Duplicate Number

Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.

Input: [1,3,4,2,2]
Output: 2


Note:

1. You must not modify the array (assume the array is read only).
2. You must use only constant, O(1) extra space.
3. Your runtime complexity should be less than O(n^2).
4. There is only one duplicate number in the array, but it could be repeated more than once.

URL: https://leetcode.com/problems/find-the-duplicate-number/

#### Strategy
If we are not limited to constant space, we could have used a hash set to solve this problem in linear time. However, since constant space is a constraint, we will need to use the Tortoise-Hare algorithm (cycle detection).

We are guaranteed two conditions: the array size is between [0..N], while the elements are integers between [1..N]. Given these conditions, if we use a fast pointer that iterates to nums[nums[fast]], we will eventually end up in a cycle, if there are duplicates in the array. Then, our job is to find the entry point of the cycle. we can assume that the entry point to this cycle from nums[0] is the duplicate number. We could then implement a slow pointer at nums[0] and iterate until slow == fast, which will be the entry point and thus, our duplicate number. 

#### Time and Space Complexity
Time complexity is ***O(N)*** and space complexity is ***O(1)*** since we are only using two pointers. 