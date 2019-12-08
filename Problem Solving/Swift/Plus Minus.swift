// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
    let length = Float(arr.count)
    print(Float(arr.filter {$0 > 0}.count) / length)
    print(Float(arr.filter {$0 < 0}.count) / length)
    print(Float(arr.filter {$0 == 0}.count) / length)
}
let digits = [-4, 3, -9, 0, 4, 1]
plusMinus(arr: digits)
