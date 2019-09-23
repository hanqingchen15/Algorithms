### Search in Rotated Sorted Array 

Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand. (i.e., ***[0,1,2,4,5,6,7]*** might become ***[4,5,6,7,0,1,2]*** ).

You are given a target value to search. If found in the array return its index, otherwise return -1. You may assume no duplicate exists in the array.

URL: https://leetcode.com/problems/search-in-rotated-sorted-array/

#### Strategy
In each iteration, we set the average of left bound and right bound as our search index. We then compare the left element to the search index element, to discover which side contains the rotated portion of the array. If left side is unrotated and target is between left element and search index element, we repeat the algorithm setting the right bound as search index - 1. If target is not in range, we repeat using search index + 1 as left bound. If right side is unrotated and target is in range, we repeat using search index + 1 as left bound. If target is not in range, we repeat using search index - 1 as the right bound. 

#### Time Complexity
This is a modified binary search, so time complexity is ***O(logN)***