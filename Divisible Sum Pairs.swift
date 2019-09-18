import Foundation

// Complete the divisibleSumPairs function below.
func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var counter = 0
    for i in 0..<n {
        for j in (i+1)..<n {
            if ( ( ar[i] + ar[j] ) % k == 0 ) {
                counter += 1
            }
        }
    }
    return counter
}

let pairs = [1, 3, 2, 6, 1, 2]

print(divisibleSumPairs(n: 6, k: 3, ar: pairs))
