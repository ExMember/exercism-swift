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
      var clean_string = input.lowercaseString
      var words = clean_string.componentsSeparatedByCharactersInSet(NSCharacterSet.alphanumericCharacterSet().invertedSet)
      words = words.filter({$0 != ""})
      return words
    }
}