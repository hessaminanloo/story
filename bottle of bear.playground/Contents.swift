
//: Playground - noun: a place where people can play

import UIKit


func bottleOfBear(withThisManyBottles: Int) -> String {
    var lyrics : String = ""
    
    for number in (1...withThisManyBottles).reversed() {
        var newLine: String = "\n \(number) bottles of beer on the wall, \(number) bottles of beer.\n Take one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
        
        lyrics += newLine
        
    }
 
    
    lyrics += "\n No more bottles of beer on the wall, no more bottles of beer. \n Go to the store and buy some more, 99 bottles of beer on the wall."

    return lyrics
    
}

print(bottleOfBear(withThisManyBottles: 80))


