### 744. Find Smallest Letter Greater Than Target
Given a list of sorted characters letters containing only lowercase letters, and given a target letter target, find the smallest element in the list that is larger than the given target.

Letters also wrap around. For example, if the target is target = 'z' and letters = ['a', 'b'], the answer is 'a'.

EX: Input:
letters = ["c", "f", "j"]
target = "a"
Output: "c"

URL: https://leetcode.com/problems/find-smallest-letter-greater-than-target/

#### Strategy
Algorithm is a binary search with comparison function. If target is greater than last element in the letters array, we simply return the first element (since it loops around). If not, we proceed with the binary search. During the search, also look at the element preceding it. If the preceding element is also bigger than target, then we know that at least one bigger element lies to the left subarray. Therefore, we shift the right bound accordingly, and repeat the algorithm until the preceding element is not greater than the target, or we have reached the first element. 

#### Time Complexity
Since it's a modified binary search, time complexity is ***O(logN)***

![img](https://raw.githubusercontent.com/hanqingchen15/Algorithms/master/assets/smallestLetterGreaterTarget.png "Logo Title Text 1")