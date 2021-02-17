// One possible Solution
// Squared in one pass - O[n] time and O[n]
//Sort the squared array using Counting Sort in O[n]


//2nd Approach - Make an array positive till 0
//Slice it in two parts
//Sort the first part till the greatest number using Counting sort.
//Append the other part to it 
//Sort the resultant sorted array in one pass O[N] time and O[n] space

class Solution {
    
    func countingSort(of unsortedArray: inout [Int], withMaximumValue maxValue: Int) {

    // Allocating a Counting Map
    
    var countingMapArray = Array(repeating: 0, count: maxValue + 1)

    // Populating the map with elements of unsorted input array
    
    for number in unsortedArray {
        countingMapArray[number] += 1
    }
    // Allocating an intial sorted array
    var sortedArray = Array(repeating: 0, count: unsortedArray.count)
    var currentSortedIndex = 0
        
    // Populating the sortedArray
    for (number, frequency) in countingMapArray.enumerated() {


        for _ in 0..<frequency {
            sortedArray[currentSortedIndex] = number
            currentSortedIndex += 1
        }
    }
     unsortedArray = sortedArray
    }
    
    func sortedSquares(_ nums: [Int]) -> [Int] {
        
        guard nums.count > 1 else {
            let result = nums[0] * nums[0]
            return [result]
        }
       
        var squaredArray = Array(repeating: 0, count: nums.count)
        
        for i in 0..<nums.count {
            if nums[i] < 0 {
                squaredArray[i] = (nums[i] * (-1))
            } else {
                squaredArray[i] = nums[i]
            }
        }
        
        var splicingIndex = 0
        var leftHalf: [Int] = []
        let first = squaredArray[0]
        
        for i in 0..<squaredArray.count {
            if squaredArray[i] > first {
                splicingIndex = i
		break
            } else {
                leftHalf.append(squaredArray[i])
            }
        }

        let rightHalf = Array(squaredArray[splicingIndex..<squaredArray.count])
    
        countingSort(of: &leftHalf, withMaximumValue: first)
        leftHalf.append(contentsOf: rightHalf)

        for i in 0..<leftHalf.count {
            squaredArray[i] = leftHalf[i] * leftHalf[i]
        }
        
        return squaredArray
    }
}

let sol = Solution()
let result = sol.sortedSquares([-4,-1,0,3,10])
let result2 = sol.sortedSquares([-7,-3,2,3,11])
print(result)
print(result2)

/* Output 

 Arrays % swift SquareSortedArray.swift
[0, 1, 9, 16, 100]
[4, 9, 9, 49, 121]
*/