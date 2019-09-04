/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    let leftSum = arr.enumerated().map { $1[$0] }.reduce(0, +)
    let rightSum = arr.enumerated().map { $1.reversed()[$0] }.reduce(0, +)
    return abs(rightSum - leftSum)
}

let matrix = [
    [1,2],
    [3,4]
]

print(diagonalDifference(arr: matrix))
