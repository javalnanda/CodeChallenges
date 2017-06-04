/*
 === Making Anagrams === 
 
 Alice is taking a cryptography class and finding anagrams to be very useful. We consider two strings to be anagrams of each other if the first string's letters can be rearranged to form the second string. In other words, both strings must contain the same exact letters in the same exact frequency For example, bacdc and dcbac are anagrams, but bacdc and dcbad are not.
 
 Alice decides on an encryption scheme involving two large strings where encryption is dependent on the minimum number of character deletions required to make the two strings anagrams. Can you help her find this number?
 
 Given two strings,a and b, that may or may not be of the same length, determine the minimum number of character deletions required to make  and  anagrams. Any characters can be deleted from either of the strings.
 
 === Input Format ===
 
 The first line contains a single string, a.
 The second line contains a single string, b.
 
 === Output Format ===
 
 Print a single integer denoting the number of characters you must delete to make the two strings anagrams of each other.
 
 === Sample Input ===
 
 cde
 abc
 
 === Sample Output ===
 
 4
 */

import Foundation

// Enter your code here
print("Enter str1")
var str1 = Array(readLine(strippingNewline: true)!.characters)
print("Enter str2")
var str2 = Array(readLine(strippingNewline: true)!.characters)

var tempDelArr = [Character]()
var tempIndexArr = [Int]()

func printMinimumCount(_ str1: inout [Character], _ str2: inout  [Character])
{
    for i in 0..<str1.count {
        
        if str2.contains(str1[i])
        {
            tempIndexArr.append(str2.index(of: str1[i])!)
            str2.remove(at: str2.index(of: str1[i])!)
        }
        else
        {
            tempDelArr.append(str1[i])
        }
    }
    
    // result
    print(tempDelArr.count + str2.count)
    
}

if str1.count <= str2.count {
    printMinimumCount(&str1, &str2)
}
else {
    printMinimumCount(&str2, &str1)
}
