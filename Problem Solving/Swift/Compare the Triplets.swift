// Complete the compareTriplets function below.
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    return [zip(a, b).filter(>).count, zip(b, a).filter(>).count]
}

print(compareTriplets(a: [1, 2, 3], b: [3, 2, 1]))
