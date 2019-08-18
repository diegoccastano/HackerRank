/*
 * Complete the simpleArraySum function below.
 */
func simpleArraySum(ar: [Int]) -> Int {
    return ar.reduce(0, +)
}

print(simpleArraySum(ar: [1,2,2,3,1,4]))
