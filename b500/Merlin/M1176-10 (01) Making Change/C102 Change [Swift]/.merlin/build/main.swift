// Add your code below:
// Converts a string to an integer, ignoring non-digits
func parseInt(s: String) -> Int {
    var value = 0
    for character in s {
        if let digit = Int(String(character)) {
             value *= 10
             value += digit
                        }
    }
    return value
}

// Prints the number of bills in the specified denomination and returns
// the number of cents consumed
func printBill(bill: Int, cents: Int) -> Int {
    let billCount = cents / 100 / bill
    if (billCount > 1) {
        print("\(billCount) x $\(bill) bills")
    } else if (billCount == 1) {
        print("\(billCount) x $\(bill) bill")
    }
    return billCount * bill * 100 
}

// Prints the number and type of coin as specified and returns the number
// of cents consumed
func printCoin(coin: Int, cents: Int) -> Int {
    let coinName: String 
    switch coin {
    case 50:
        coinName = "half-dollar coin"
    case 25:
        coinName = "quarter"
    case 10:
        coinName = "dime"
    case 5:
        coinName = "nickel"
    case 1:
        coinName = "penny"
    default:
        fatalError("Unexpected coin \(coin).")
    }
    let coinCount = cents / coin

    if coinCount > 1 {
        print("\(coinCount) x \(coinName)s")
    } else if coinCount > 0 {
        print("\(coinCount) x \(coinName)")
    }
    return coinCount * coin 
}

func printDenominations(forSum sum: String) {
    print("Original sum: \(sum)")
    var cents = parseInt(s: sum)

    cents -= printBill(bill: 100, cents: cents)
    cents -= printBill(bill: 50, cents: cents)
    cents -= printBill(bill: 20, cents: cents)
    cents -= printBill(bill: 10, cents: cents)
    cents -= printBill(bill: 5, cents: cents)
    cents -= printBill(bill: 2, cents: cents)
    cents -= printBill(bill: 1, cents: cents)

    cents -= printCoin(coin: 50, cents: cents)
    cents -= printCoin(coin: 25, cents: cents)
    cents -= printCoin(coin: 10, cents: cents)
    cents -= printCoin(coin:  5, cents: cents)
    cents -= printCoin(coin:  1, cents: cents)
    
}
func printReceipt(itemSubtotal:itemSubtotal, tip:tip, tax:tax, amountPaid:amountPaid)
        
// Add your code above


// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let itemSubtotal = "$912.76"
let tip = "$136.91"
let tax = "$73.02"
let amountPaid = "$1222.60"
printReceipt(itemSubtotal:itemSubtotal, tip:tip, tax:tax, amountPaid:amountPaid)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧



