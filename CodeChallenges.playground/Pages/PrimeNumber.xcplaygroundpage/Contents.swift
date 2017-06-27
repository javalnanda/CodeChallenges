//: [Previous](@previous)
/*
 Task
 A prime is a natural number greater than 1 that has no positive divisors other than  and itself. Given a number, , determine and print whether it's Prime or Not Prime.
 
 Note: If possible, try to come up with a O(√n) primality algorithm, or see what sort of optimizations you come up with for an O(n) algorithm. Be sure to check out the Editorial after submitting your code!
 */
import Foundation

let numOfEntries = Int(readLine()!)!

func checkPrime(num: Int) {
    var isPrime = true
    if num == 1 {
        isPrime = false
    }
    else if num == 2 {
        isPrime = true
    }
    else {
        if num % 2 == 0 {
            isPrime = false
        }
        else {
            var i = 3
            while i <= Int(sqrt(Double(num))) {
                if num%i == 0 {
                    isPrime = false
                    break
                }
                i += 2
            }
        }
    }
    
    
    print(isPrime ? "Prime" : "Not prime")
}

for _ in 1...numOfEntries {
    let number = Int(readLine()!)!
    checkPrime(num: number)
}