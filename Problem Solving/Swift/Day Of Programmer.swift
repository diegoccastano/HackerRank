import Foundation

struct Date {
    var day: Int
    var month: Int
    var year: Int
}

func dayOfProgrammer(year: Int) -> String {
        
    var date = Date(day: 0, month: 9, year: year)
    
    if year < 1918 && ( (year % 4) == 0 ) {
        date.day = 12
    } else if year > 1918 && ( (year % 400) == 0 || ((year % 4) == 0 && (year % 100) != 0) ) {
        date.day = 12
    } else if year == 1918 {
        date.day = 26
    } else {
        date.day = 13
    }
        
    return stringify(the: date)
}

func stringify(the date: Date) -> String {
    return "\(String(format: "%02d", date.day)).\(String(format: "%02d", date.month)).\(date.year)"
}

print(dayOfProgrammer(year: 1918))