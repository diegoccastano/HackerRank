
func bonAppetit(_ bill: [Int], _ k: Int, _ b: Int) -> Void {
    let total = bill.reduce(0, +)

    let exception = bill[k]
    
    let partial = total - exception
    let individual =  partial / 2
    let difference = b - individual

    if difference == 0 {
        print("Bon Appetit")
    } else {
        print(difference)
    }
}

bonAppetit([3,10,2,9], 1, 12)