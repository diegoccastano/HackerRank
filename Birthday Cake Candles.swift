// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(ar: [Int]) -> Int {
    let max = ar.max()
    return ar.filter {$0 == max}.count
}

let array = [1, 2, 3, 4, 6, 6, 6]
birthdayCakeCandles(ar: array)
