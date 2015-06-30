//
//  Bob.swift
//  Bob
//
//  Created by Damien Burke on 5/20/15.
//  Copyright (c) 2015 Damien Burke. All rights reserved.
//

import Foundation

class Bob {
    class func hey(input:String) -> String {
        if (isShouting(input)) {
            return "Woah, chill out!"
            
        } else if (isSilence(input)) {
            return "Fine, be that way."
        
        } else if (isAskingQuestion(input)) {
            return "Sure."
        
        } else {
            return "Whatever."
        }
    }

    private class func isShouting(input:String) -> Bool {
        let hasLowercaseLetters = (input != input.uppercaseString)
        let hasUppercaseLetters = (input != input.lowercaseString)
        return hasUppercaseLetters && !hasLowercaseLetters
    }
    
    private class func isSilence(input:String) -> Bool {
        let whitespaceCharacters = NSCharacterSet.whitespaceCharacterSet()
        let inputWithoutWhitespace = input.stringByTrimmingCharactersInSet(whitespaceCharacters)
        return inputWithoutWhitespace == ""
    }
    
    private class func isAskingQuestion(input:String) -> Bool {
        return input.hasSuffix("?")
    }
}