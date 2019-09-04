// Complete the staircase function below.
func staircase1(n: Int) -> Void {
    var line = Array(String.init(repeating: " ", count: n))
    (1...n).map {
        line[n-$0] = "#"
        return String(line)
        }.forEach { print($0) }
}

// Complete the staircase function below.
func staircase2(n: Int) -> Void {
    var line = String.init(repeating: " ", count: n)
    (1...n).map {
        line = line.prefix(n-$0) + "#" + line.reversed().prefix($0-1)
        return line
        }.forEach { print($0)}
    return
}

staircase1(n: 6)
staircase2(n: 6)
