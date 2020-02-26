import Foundation

// Complete the reverseArray function below.
func reverseArray(a: [Int]) -> [Int] {
    var result = Array<Int>()
    let lenght = a.count
    for i in 0..<lenght {
        result.append(lenght-i)
    }
    return result
//    return a.reversed()
}

let arr: Array<Int> = [1, 2, 3, 4]
print(reverseArray(a: arr))
