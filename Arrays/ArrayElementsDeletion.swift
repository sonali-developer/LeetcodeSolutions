class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        guard nums.count > 1 else {
            if nums[0] == val {
                nums = []
                return 0
            } else {
                return 1
            }
        }
        
        var startIndex = 0
        var endIndex = nums.count
        while (startIndex < endIndex) {
            if nums[startIndex] == val {
                nums[startIndex] = nums[endIndex - 1]
                endIndex -= 1
            } else {
                startIndex += 1
            }    
        }
       
        return endIndex
    }
}

let sol = Solution()
var numArray = [[0,2,3,4,5,3,1,0],
[3,2,2,3],
[3,3],
[2,3,3]
]

let keyArray = [3,3,3,2]

for i in 0..<numArray.count {
	let result = sol.removeElement(&numArray[i], keyArray[i])
	for j in 0..<result {
		print(numArray[i][j], terminator: " ")
	}
	print()
	print(result)
}

/* Output
Arrays % swift ArrayElementsDeletion.swift
0 2 0 4 5 1 
6
2 2 
2

0
3 3 
2


*/