//Finding maximum consecutive ones in a binary Array

class Solution {
    var maxConsecutiveOnes = 0
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        guard nums.count > 1 else {
            if nums[0] == 1 {
                return 1
            } else {
                return 0
            }
        }
        
        var localTracker = 0
	    var isRow = false

        for i in 0..<nums.count {
            if nums[i] == 0 {
		isRow = false
		if self.maxConsecutiveOnes < localTracker {
			self.maxConsecutiveOnes = localTracker
		} 
		localTracker = 0
		} else {
			localTracker += 1
			if !isRow {
				isRow = !isRow
			    } 
		    }	
       	}
         if nums[nums.count - 1] == 1 {
            if self.maxConsecutiveOnes < localTracker {
                self.maxConsecutiveOnes = localTracker
            }
        }
	    return self.maxConsecutiveOnes
    }
}

let sol = Solution()
let nums1 = [1,1,1,1,0,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1]
let consecutiveOnes = sol.findMaxConsecutiveOnes(nums1)
print("The maximum consecutive ones in \(nums1) binary array is - \(consecutiveOnes)")


/* Output:

Arrays % swift ConsecutiveOnes.swift
The maximum consecutive ones in [1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1] binary array is - 8

Input:
[0]
[1]
[]
[1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1]

Output: 

0
1
0
8
*/