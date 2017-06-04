/*
=== Task ===
 Given a string, S , of length N that is indexed from 0 to N-1 , print its even-indexed and odd-indexed characters as  2 space-separated strings on a single line (see the Sample below for more detail).
 
 Note: 0 is considered to be an even index.
 
=== Input Format ===
 
 The first line contains an integer, T (the number of test cases).
 Each line i of the T subsequent lines contain a String, S.
 
=== Output Format ===
 
 For each String Sj (where 0 <= j <= T-1), print Sj's even-indexed characters, followed by a space, followed by Sj's odd-indexed characters.
 
=== Sample Input ===
 
 2
 Hacker
 Rank
 
=== Sample Output ===
 
 Hce akr
 Rn ak
 */
import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    // Print the even-indexed characters
    // Write your code here
    var evenStr = ""
    var oddStr = ""
    for i in 0..<string.characters.count {
        if i%2 == 0 {
            evenStr.append(string[string.index(string.startIndex, offsetBy: i)])
        }
        else {
            oddStr.append(string[string.index(string.startIndex, offsetBy: i)])
        }
    }
    
    print("\(evenStr) \(oddStr)", terminator: "")
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
