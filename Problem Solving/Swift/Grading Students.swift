func gradingStudents(grades: [Int]) -> [Int] {
    return grades.map {
        if $0 >= 38 {
            let rounding = 5 - ($0 % 5)
            return rounding < 3 ? $0 + rounding : $0
        } else {
            return $0
        }
    }
}
let grades = [4, 73, 67, 38, 33]
print(gradingStudents(grades: grades))
