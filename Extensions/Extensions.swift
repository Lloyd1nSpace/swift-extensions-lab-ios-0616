//
//  Extensions.swift
//  Extensions
//
//  Created by Lloyd W. Sykes on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    var unicornLevel: String {
        if self.characters.contains("🦄") {
            return "My 🦄 is awesome"}
        return self
    }
    
    var pigLatin: String { var pigLatin = ""
        var pigLatinArray = self.characters
        
        // If it's a single letter, it should return the character
        if pigLatin.characters.count == 1 {
            return pigLatin
        }
        // Takes the first letter of a word and moves it to the end
        let firstLetter = pigLatinArray.first
        pigLatinArray.removeFirst()
        pigLatinArray.append(firstLetter!)
        pigLatin = String(pigLatinArray)
        
        // Adds the letters "ay" to the end of the word
        pigLatin += "ay"
        
        // Should be able to handle sentances
        
        return pigLatin
    }
    
    var points: Int {
        
        var wordPoints = 0
        
        let consonants: [Character] = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "X", "Z", "W", "Y", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "x", "z", "y", "w"]
        let vowels: [Character] = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
        
        for character in self.characters {
            
            if consonants.contains(character) {
                wordPoints += 1 // 1 point for consonants
            }
            
            if vowels.contains(character) {
                wordPoints += 2 // 2 points for vowels
            }
        }
        
        if self == "" {
            return 0
        }
        return wordPoints
    }
    
    func whisper() -> String {
        return self.lowercaseString
    }
    
    func shout() -> String {
        return self.uppercaseString
    }
}

extension Int {
    
    var squared: Int {return self * self}
    var halved: Int {return self.half()}
    
    func half() -> Int {
        let number = self
        
        return number / 2
    }
    
    func isDivisibleBy(moduloOf: Int) -> Bool {
        
        if self % moduloOf == 0 {
            return true
        } else {
            return false
        }
    }
}