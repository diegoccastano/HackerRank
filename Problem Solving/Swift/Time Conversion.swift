/*
 * Complete the timeConversion function below.
 */
func timeConversion(s: String) -> String {
    let index = s.index(s.startIndex, offsetBy: 2)
    var hour = Int(s.prefix(upTo: index))!
    if hour == 12 && s.uppercased().contains("A") {
        hour = 0
    } else if hour < 12 && s.uppercased().contains("P") {
        hour = hour + 12
    }
    return String(format: "%02d", hour) + String(s.suffix(from: index).prefix(6))
}

print(timeConversion(s: "12:00:00aM"))
print(timeConversion(s: "12:00:00pM"))
