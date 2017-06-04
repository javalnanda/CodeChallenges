/*
 === Task ===
 Given n names and phone numbers, assemble a phone book that maps friends' names to their respective phone numbers. You will then be given an unknown number of names to query your phone book for. For each queried, print the associated entry from your phone book on a new line in the form name=phoneNumber; if an entry for name is not found, print Not found instead.
 
 Note: Your phone book should be a Dictionary/Map/HashMap data structure.
 
=== Input Format ===
 
 The first line contains an integer, n , denoting the number of entries in the phone book.
 Each of the n subsequent lines describes an entry in the form of 2 space-separated values on a single line. The first value is a friend's name, and the second value is an 8-digit phone number.
 
 After the n lines of phone book entries, there are an unknown number of lines of queries. Each line (query) contains a  name to look up, and you must continue reading lines until there is no more input.
 
 Note: Names consist of lowercase English alphabetic letters and are first names only.
 
=== Output Format ===
 
 On a new line for each query, print Not found if the name has no corresponding entry in the phone book; otherwise, print the full  and  in the format name=phoneNumber.
 
=== Sample Input ===
 
 3
 sam 99912222
 tom 11122222
 harry 12299933
 sam
 edward
 harry
 
=== Sample Output ===
 
 sam=99912222
 Not found
 harry=12299933
 
 */

import Foundation
import Darwin

let numOfEntries = Int(readLine()!)!
var phoneBook:Dictionary = [String:String]()

func addToPhoneBook(name: String, number: String) {
    // This prints inputString to stderr for debugging:
//    fputs("string: " + string + "\n", stderr)
    
    // Print the even-indexed characters
    // Write your code here
    phoneBook[name] = number
}

for _ in 1...numOfEntries {
    let nameNnumber = readLine(strippingNewline: true)!.characters
        .split {$0 == " "}
        .map (String.init)
    addToPhoneBook(name: nameNnumber[0], number: nameNnumber[1])
}

var nextAvailable = true
while(nextAvailable) {
    let query = readLine()
    if query != nil {
        if let number = phoneBook[query!] {
            print("\(query!)=\(phoneBook[query!]!)")
        }
        else {
            print("Not found")
        }
    }
    else {
        nextAvailable = false
        break
    }
}
