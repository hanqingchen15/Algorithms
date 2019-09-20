### 154. Find Minimum in Rotated Sorted Array II

Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e.,  [0,1,2,4,5,6,7] might become  [4,5,6,7,0,1,2]).

Find the minimum element.

The array may contain duplicates.

URL: https://leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii/

#### Strategy
Very similar to finding the minimum in a sorted then rotated array with all unique elements. In this problem, we look at three cases. If mid > right, then we know for sure minimum lies to arr[mid + 1..right]. If mid < right, then we know for sure that the minimum lies in arr[left..mid]. However, what if mid == right? In this case, we can choose not to consider right, since even if right is the minimum, so is mid. Therefore, we decrement right by 1, then run the algorithm again. 

#### Time Complexity
Usually ***O(logN)*** . However, in the worst case scenario, becomes ***O(N)*** . Consider this: arr = [1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1]. The algorithm has to decrement right by almost ***N*** times before finding the minimum at index of 1.