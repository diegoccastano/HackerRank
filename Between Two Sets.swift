import Foundation

func gcd(a: Int, b: Int) -> Int {
    if b != 0 {
        return gcd(a: b, b: a % b);
    } else {
        return a
    }
}

func gcd(vector: [Int]) -> Int {
    return vector.reduce(0) { gcd(a: $0, b: $1) }
}

func lcm(a: Int, b: Int) -> Int {
    return (a / gcd(a: a, b: b)) * b
}

func lcm(vector: [Int]) -> Int {
    return vector.reduce(1) { lcm(a: $0, b: $1) }
}

func getTotalX(a: [Int], b: [Int]) -> Int {
    let lcmA = lcm(vector: a)
    let gcdB = gcd(vector: b)
    
    var min = a.max()!
    var max = b.min()! + 1
    
    if min > max {
        let aux = min
        min = max
        max = aux
    }
    
    let x:[Int] = Array(min...max)
    
    return x.filter{ ($0 % lcmA == 0) && (gcdB % $0 == 0) }.count
}

let arrayA = [100, 99, 98, 97, 96, 95, 94, 93, 92, 91]
let arrayB = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(getTotalX(a: arrayA, b: arrayB))
