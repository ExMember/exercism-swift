//
//  WordCount.swift
//  Word Count
//
//  Created by Damien Burke on 6/1/15.
//  Copyright (c) 2015 Damien Burke. All rights reserved.
//

import Foundation

class WordCount {
    let inputString:String
    
    init(words:String){
        inputString = words
    }
    
    func count() -> Dictionary<String,Int> {
        var runningCount = [String:Int]()
        
        var wordList = getWordList(inputString)
      
        for word in wordList {
            if let previousCount = runningCount[word] {
                runningCount[word] = previousCount + 1
            } else {
                runningCount[word] = 1
            }
        }
        
        return runningCount
    }
    
    private func getWordList(input:String) -> Array<String> {
      let lowercased_input = input.lowercaseString
      let unwantedChars = NSCharacterSet.alphanumericCharacterSet().invertedSet
      var words = lowercased_input.componentsSeparatedByCharactersInSet(unwantedChars)
      words = words.filter({$0 != ""})
      return words
    }
}