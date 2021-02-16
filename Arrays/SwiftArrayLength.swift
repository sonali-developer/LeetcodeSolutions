
// Create a new int array with a capacity of 6.
var array1: [Int] = Array(repeating: 0, count: 6)

// Current length is 0, because it has 0 types of elements.
var length = 0;

// Add 3 items into it.

for i in 0..<3 {
    array1[i] = i * i;
    // Each time we add an element, the length goes up by one.
    length += 1;
}

print("The Array has a capacity of \(array1.count)");
print("The Array has a length of \(length)");

/* Output
 Arrays % swift SwiftArrayLength.swift
The Array has a capacity of 6
The Array has a length of 3

*/