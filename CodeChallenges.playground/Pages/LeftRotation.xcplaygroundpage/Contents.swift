//: [Previous](@previous)

/*
=== Left Rotation ===
 
 A left rotation operation on an array of size  shifts each of the array's elements  unit to the left. For example, if 2 left rotations are performed on array [1,2,3,4,5], then the array would become [3,4,5,1,2].
 
 Given an array of  integers and a number, , perform  left rotations on the array. Then print the updated array as a single line of space-separated integers.
 
=== Input Format ===
 
 The first line contains two space-separated integers denoting the respective values of  (the number of integers) and  (the number of left rotations you must perform).
 The second line contains  space-separated integers describing the respective elements of the array's initial state.
 

 
=== Output Format ===
 
 Print a single line of  space-separated integers denoting the final state of the array after performing  left rotations.
 
=== Sample Input ===
 
 5 4
 1 2 3 4 5
 
=== Sample Output ===
 
 5 1 2 3 4

 */

import Foundation


// Enter your code here
let n = Int(readLine(strippingNewline: true)!)!
let k = Int(readLine(strippingNewline: true)!)!

let numericArray = readLine(strippingNewline: true)!.characters
    .split {$0 == " "}
    .map (String.init)
    .map {(str: String) -> Int in
        return Int(str)!
}

var newArray:[Int] = []

for i in 0..<n-1 {
    let newIndex = i-k < 0 ? (n-1)-(-1*(i-k)) : i-k
    newArray[newIndex] = numericArray[i]
}

print(newArray)
