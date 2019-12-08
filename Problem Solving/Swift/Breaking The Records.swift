import Foundation

// Complete the breakingRecords function below.
func breakingRecords(scores: [Int]) -> [Int] {
    var highest = (value: scores[0], changes: 0)
    var lowest = (value: scores[0], changes: 0)
    
    for score in scores {
        if score > highest.value {
            highest.value = score
            highest.changes += 1
        } else if score < lowest.value {
            lowest.value = score
            lowest.changes += 1
        }
    }
    
    let result:[Int] = [highest.changes, lowest.changes]
    
    return result
}

let scores: [Int] = [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]

print(breakingRecords(scores: scores))
