//
//  main.swift
//  task2
//
//  Created by Volha on 15.06.18.
//  Copyright © 2018 Volha. All rights reserved.
//

import Foundation

print("Enter string:")
let s = readLine()!

var len: [String : Int] = [:]
var words = s.characters.split{$0 == " "}.map(String.init)
print(words)
var average = 0
for word in words {
    len[word] = word.count
    average += word.count
}

print (Double(average) / Double(words.count))
