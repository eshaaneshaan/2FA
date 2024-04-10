import Foundation;
// Add your code below:
// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let sum = "$949.98"
printDenominations(forSum:sum)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

func printDenominations(forSum:String){
    print("Original sum: " + forSum)
    var moneyDouble:Double = Double(forSum.substring(from:1)) ?? 0.0
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

            moneyDouble = round(((moneyDouble - (round(moneyPer*(floor(moneyDouble/moneyPer))*1000) / 1000)) * 100)) / 100;
        }
    }
    print("")
    print("Bills: " + String(bills))
    print("Coins: " + String(coins))
}
