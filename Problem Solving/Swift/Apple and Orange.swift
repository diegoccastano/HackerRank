import Foundation

// Complete the countApplesAndOranges function below.
func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    print(apples.filter {a + $0 >= s && a + $0 <= t}.count)
    print(oranges.filter {b + $0 <= t && b + $0 >= s}.count)
}

let apples = [-2, 2, 1]
let oranges = [5, -6]

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: apples, oranges: oranges)
