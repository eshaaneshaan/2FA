import Foundation;
// Add your code below:
// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let itemSubtotal = "$123.45"
let tip = "$12.00"
let tax = "$6.00"
let amountPaid = "$200.00"
printReceipt(itemSubtotal:itemSubtotal, tip:tip, tax:tax, amountPaid:amountPaid)

// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

func printDenominations(forSum:String){
    var moneyDouble:Double = Double(forSum.substring(from:1)) ?? 0.0 // Convert to double
    let denominations:[(Double, String)] = [(100, "$100 bill"), (50,"$50 bill"), (20, "$20 bill"), (10, "$10 bill"), (5, "$5 bill"), (2, "$2 bill"), (1, "$1 bill"), (0.5, "half-dollar coin"), (0.25, "quarter"), (0.1, "dime"), (0.05, "nickel"), (0.01, "penny")]
    var bills:Int = 0;
    var coins:Int = 0;
    for denomination in 0..<denominations.count{
        let moneyPer:Double = denominations[denomination].0
        if Double(moneyDouble/moneyPer) >= 1{
     
            var plural = ""
            if (floor(moneyDouble/moneyPer)>=2 && moneyPer != 0.01){
                plural = "s"
            }
            else if (floor(moneyDouble/moneyPer)>=2 && moneyPer == 0.01){
                plural="ies"
            }
            let returnString:String = String(Int(floor(moneyDouble/moneyPer)));
            
            if (plural != "ies"){
                print(returnString + " x " + denominations[denomination].1+plural);
            }
            else{
                print(returnString + " x " + denominations[denomination].1.substring(to:denominations[denomination].1.count-1) + plural)
            }
            if (moneyPer < 1){
                coins += Int(returnString) ?? 0
            }
            else{
                bills += Int(returnString) ?? 0
            }

            moneyDouble = round(((moneyDouble - (round(moneyPer*(floor(moneyDouble/moneyPer))*100) / 100)) * 100)) / 100;
        }
    }
    print("")
    print("Bills: " + String(bills))
    print("Coins: " + String(coins))
}

func printReceipt(itemSubtotal:String, tip:String, tax:String, amountPaid:String){
    print("Item Subtotal: " + itemSubtotal);
    print("Tip: " + tip);
    print("Tax: " + tax);
    let subtotalDouble:Double = Double(itemSubtotal.substring(from:1)) ?? 0;
    let tipDouble:Double = Double(tip.substring(from:1)) ?? 0;
    let taxDouble:Double = Double(tax.substring(from:1)) ?? 0;
    let amountPaidDouble:Double = Double(amountPaid.substring(from:1)) ?? 0
    let total = String(round((subtotalDouble + tipDouble + taxDouble)*100)/100)
    print("Total: " + "$" + total)
    print("Amount paid: " + amountPaid)
    print("Change:")

    printDenominations(forSum:"$" + String(amountPaidDouble - (Double(total) ?? 0)))
}
