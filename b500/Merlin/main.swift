let sum = "$123.45"                                                                                                                                                                                       
                                                                                                                                                                                                           
                                                                                                                                                                                                           
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
                                                                                                                                                                                                           
 print(parseInt(s: sum))     
