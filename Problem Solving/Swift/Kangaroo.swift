import Foundation

// Complete the kangaroo function below.
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if (v1 > v2) && (x2-x1)%(v1-v2) == 0 {
        return "YES"
    } else  {
        return "NO"
    }
}

print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3))
