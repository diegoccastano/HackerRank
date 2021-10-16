func pageCount(_ n: Int, _ p: Int) -> Int {
    let _n  = n % 2 == 0 ? n : n - 1
    let _p  = p % 2 == 0 ? p : p - 1

    let leading  = _p / 2
    let trailing = ( _n / 2 ) - leading

    return leading < trailing ? leading : trailing
}

print(pageCount(6, 5))