import Foundation

// Complete the birthday function below.
func birthday(s: [Int], d: Int, m: Int) -> Int {
    var counter = 0
    for count in 0...s.count-m {
        let max = ( count + m ) % ( s.count + 1 )
        let sum = s[count..<max].reduce(0, +)
        if sum == d {
            counter += 1
        }
    }
    return counter
}

let chocolate:[Int] = [1, 2, 1, 3, 2]

print(birthday(s: chocolate, d: 3, m: 2))
