import Foundation

let array1 = [1, 4, 4, 4, 5, 3]
let array2 = [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]

func migratoryBirds(arr: [Int]) -> Int {
    let countedSet = NSCountedSet(array: arr)
    guard let counts = countedSet.max(by: { countedSet.count(for: $0) < countedSet.count(for: $1) }) as? Int else { return 0 }
    return counts
}

print(migratoryBirds(arr: array1))
print(migratoryBirds(arr: array2))
