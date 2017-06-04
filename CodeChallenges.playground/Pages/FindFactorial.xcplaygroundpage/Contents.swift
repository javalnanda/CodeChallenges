import Foundation;

// Enter your code here
let number = Int(readLine()!)!

func factorial(number: Int) -> Int {
    if number > 1 {
        return number * factorial(number:(number - 1))
    }
    else {
        return number
    }
}

print("\(factorial(number: number))")
