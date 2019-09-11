### First Bad Version

You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

Suppose you have n versions **[1, 2, ..., n]** and you want to find out the first bad one, which causes all the following ones to be bad.

You are given an API bool isBadVersion(version) which will return whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

URL: https://leetcode.com/problems/first-bad-version/

#### Strategy
This problem can be solved by binary search with a very small modification. We know that every version after the first bad version will be bad as well. When we query the API with pivot and it returns false, then we know that bad version is in the left sub array. If the API returns true, then we test the the pivot - 1 element. If pivot - 1 returns false, then we know pivot is the left most 'bad' version. If pivot - 1 returns true, then we can set pviot - 1 as the right bound and iterate the algorithm again.

Tip: use ***mid = left + ( right - left ) / 2*** instead of ***mid = ( left + right ) / 2*** to avoid integer overflow. (Happens when ***N*** is very large)

#### Time Complexity
Since this is a simple binary search with minor modifications, time complexity should still be ***O( logN )***