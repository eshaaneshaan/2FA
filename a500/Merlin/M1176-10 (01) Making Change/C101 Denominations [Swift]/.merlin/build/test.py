sum = 723.67
multiple = bool(True)
c=float('Original sum: $'+str(sum))
if (int(c//100) > 1):
    multiple = True
print(int(c//100), " x $100 bills")
c = c%100
print(int(c//50), " x $50 bills")
c = c%50
print(int(c//20), " x ")
c = c%20
print(int(c//10), "10 dollar bills")
c = c%10
print(int(c//5), "5 dollar bills")
c = c%5
print(int(c//2), "2 dollar bills")
c = c%2
print(int(c//1), "dollars")
c = c%1
print(int(c//.25), "quarters")
c = c%.25
print(int(c//.10), "dimes")
c = c%.10
print(int(c//.5), "nickles")
c = c%.5
print(int(c//.1), "pennies")

#running logic in python to understand
