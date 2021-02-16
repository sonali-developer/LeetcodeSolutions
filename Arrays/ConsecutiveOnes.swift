//Finding maximum consecutive ones in a binary Array

public class Solution {

	var maxConsecutiveOnes = 0

    func findMaxConsecutiveOnes(nums: [Int]) -> Int {
        
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
	return self.maxConsecutiveOnes
    }
}

let sol = Solution()
let nums = [1,1,1,1,0,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1]
let consecutiveOnes = sol.findMaxConsecutiveOnes(nums: nums)
print("The maximum consecutive ones in \(nums) binary array is - \(consecutiveOnes)")


/* Output 

Arrays % swift ConsecutiveOnes.swift
The maximum consecutive ones in [1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1] binary array is - 8

*/