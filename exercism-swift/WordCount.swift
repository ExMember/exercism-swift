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
      //input = input.stringByRe
      // input = input.lowercaseString
      //return input.componentsSeparatedByCharactersInSet(NSCharacterSet.alphanumericCharacterSet().invertedSet)
      //return input.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        //return ["word"]
      let whitespaceAndPunctuationSet = NSMutableCharacterSet.whitespaceAndNewlineCharacterSet()
      whitespaceAndPunctuationSet.formUnionWithCharacterSet(NSCharacterSet.punctuationCharacterSet())
      
      println(input)
      let scanner = NSScanner(string: input)
      var wordList = [String]()
      var possibleWord:NSString?
      while scanner.scanUpToCharactersFromSet(whitespaceAndPunctuationSet, intoString: &possibleWord) {
        println(possibleWord)
        if let word = possibleWord {
          wordList.append(String(word))
        }
      }
      return wordList
    }
}