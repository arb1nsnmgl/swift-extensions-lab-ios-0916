//
//  Extensions.swift
//  Extensions
//
//  Created by Arvin San Miguel on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    
    func whisper() -> String { return self.lowercased() }
    func shout() -> String { return self.uppercased() }
    
    var pigLatin: String {
    
        let strings = self.components(separatedBy: " ")
        var latinWord = [String]()
        
        if self.characters.count == 1 { return self }
        
        for word in strings {
            let newWord = word
            let firstLetter = String(describing: word.characters.first!).lowercased()
            var newString = String(newWord.characters.dropFirst())
            let capitalize = String(newString.characters.removeFirst()).uppercased()
            latinWord.append(capitalize + newString + firstLetter + "ay")
        }
        return latinWord.joined(separator: " ")

    }
    
    var points: Int {
        var total = 0
        let consonants = "bcdfghjklmnpqrstvwxyz".characters.map({String($0)})
        let vowels = ["a","e","i","o","u"]
        
        if self.isEmpty || self == "" { return 0 }
        
        for letter in self.characters.map({String($0).lowercased()}) {
            if consonants.contains(letter) { total += 1 } else if vowels.contains(letter) { total += 2 }
        }
        return total
        
    }
    
    var unicornLevel: String {
        var unicorns = ""
        for letter in self.characters.map({String($0)}) {
            if letter != " " { unicorns += "🦄" }
        }
        return unicorns
    }
    
}

extension Int {
    
    func half() -> Double { return Double(self) * 0.5 }
    
    func isDivisible(by number: Int) -> Bool {
        if self % number == 0 { return true } else { return false }
    }
    
    var squared: Int { return self * self }
    var halved: Double { return self.half() }
    
}



