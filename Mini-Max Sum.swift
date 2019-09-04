// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    let max = arr.firstIndex(of: arr.max()!)
    let min = arr.firstIndex(of: arr.min()!)
    let array: [(Int, Int)] = arr.enumerated().map { ($0, $1) }
    print(array.filter {$0.0 != max!}.reduce(0) {$0 + $1.1} , array.filter {$0.0 != min!}.reduce(0) {$0 + $1.1} )
}
let array = [1, 2, 3, 4, 6, 6, 6]
miniMaxSum(arr: array)

/*
 // Complete the miniMaxSum function below.
 func miniMaxSum(arr: [Int]) -> Void {
 let max = arr.max()!
 let min = arr.min()!
 print(arr.filter{$0 < max}.reduce(0,+), arr.filter{$0 > min}.reduce(0,+))
 }
 */
