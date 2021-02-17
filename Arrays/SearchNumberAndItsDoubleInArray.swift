/*

Given an array arr of integers, check if there exists two integers N and M such that N is the double of M ( i.e. N = 2 * M).

More formally check if there exists two indices i and j such that :

i != j
0 <= i, j < arr.length
arr[i] == 2 * arr[j]
 

Example 1:

Input: arr = [10,2,5,3]
Output: true
Explanation: N = 10 is the double of M = 5,that is, 10 = 2 * 5.
Example 2:

Input: arr = [7,1,14,11]
Output: true
Explanation: N = 14 is the double of M = 7,that is, 14 = 2 * 7.
Example 3:

Input: arr = [3,1,7,11]
Output: false
Explanation: In this case does not exist N and M, such that N = 2 * M.
 

Constraints:

2 <= arr.length <= 500
-10^3 <= arr[i] <= 10^3
*/

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        
      var searchDict : [Int: Int] = [ : ]
      var num = 0
      
      for i in 0..<arr.count {
        num = arr[i]
        let mul = num * 2
        var div = Int.min
        if ((num % 2) == 0) {
          div = num / 2
        } 
        if (searchDict[mul] == nil && searchDict[div] == nil) {
          searchDict[num] = 1
        } else if searchDict[mul] != nil {
            return true
        } else if searchDict[div] != nil {
          return true
        }
       
      }
      
      return false
    }
}

let sol = Solution()
let result1 = sol.checkIfExist([10,2,5,3])
print("[10,2,5,3] - \(result1)")
let result2 = sol.checkIfExist([7,1,14,11])
print("7,1,14,11] - \(result2)")

/* Output

 Arrays % swift SearchNumberAndItsDoubleInArray.swift
[10,2,5,3] - true
7,1,14,11] - true

*/