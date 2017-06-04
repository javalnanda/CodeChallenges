/*
=== Ransom Note ===
 
 A kidnapper wrote a ransom note but is worried it will be traced back to him. He found a magazine and wants to know if he can cut out whole words from it and use them to create an untraceable replica of his ransom note. The words in his note are case-sensitive and he must use whole words available in the magazine, meaning he cannot use substrings or concatenation to create the words he needs.
 
 Given the words in the magazine and the words in the ransom note, print Yes if he can replicate his ransom note exactly using whole words from the magazine; otherwise, print No.
 
=== Input Format ===
 
 The first line contains two space-separated integers describing the respective values of m (the number of words in the magazine) and n (the number of words in the ransom note).
 The second line contains m space-separated strings denoting the words present in the magazine.
 The third line contains n space-separated strings denoting the words present in the ransom note.

=== Output Format ===
 
 Print Yes if he can use the magazine to create an untraceable replica of his ransom note; otherwise, print No.
 
=== Sample Input ===
 
 6 4
 give me one grand today night
 give one grand today
 
=== Sample Output ===
 
 Yes

 */

import Foundation

// Enter your code here
let numOfWords = readLine(strippingNewline: true)!.characters
    .split {$0 == " "}
    .map (String.init)
    .map {(str: String) -> Int in
        return Int(str)!}

if numOfWords[0] < numOfWords[1] {
    print("No")
}
else {
       
    let magazineWords = readLine(strippingNewline: true)!.characters
        .split {$0 == " "}
        .map (String.init)
    
    let ransomNoteWords = readLine(strippingNewline: true)!.characters
        .split {$0 == " "}
        .map (String.init)
    
    print("Magazine : \(magazineWords)")
    print("Ransome : \(ransomNoteWords)")
    
    var hash: [String:Int] = [:]
    
    var result = "Yes"
    
    for word in magazineWords {
        if hash[word] == nil || hash[word] == 0 {
            hash[word] =  1
        }
        else {
            hash[word] =  hash[word]! + 1
        }
    }
    
//    print("Hash : \(hash)")
    for word in ransomNoteWords {
        if hash[word] == nil || hash[word] == 0 {
            result = "No"
            break
        }
        else {
            hash[word] = hash[word]! - 1
        }
    }
    
    print(result)
    
}
