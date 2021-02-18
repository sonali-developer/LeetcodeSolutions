/*
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
Note:

You must do this in-place without making a copy of the array.
Minimize the total number of operations.
*/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        
        guard nums.count > 0 else {
            return 
        }
        
        guard nums.count > 1 else {
            return
        }
     
        var writePointer = 0
        
        for readPointer in 1..<nums.count {
            if nums[readPointer] != 0 {
                if nums[writePointer] == 0 {
                    nums[writePointer] = nums[readPointer]
                    nums[readPointer] = 0
                    writePointer += 1
                } else {
                    writePointer += 1
                }
            } else {
                if nums[writePointer] != 0 {
                    writePointer += 1
                }
            }
        }
        print(nums)
        
    }
}

var numArrays = [
[0,1,0,3,12],
[1,0,1],
[4,2,4,0,0,3,0,5,1,0]
]

let sol = Solution()

for i in 0..<numArrays.count {
	sol.moveZeroes(&numArrays[i])
}

/* Output
Arrays % swift MoveZeroesInPlace.swift
[1, 3, 12, 0, 0]
[1, 1, 0]
[4, 2, 4, 3, 5, 1, 0, 0, 0, 0]
*/