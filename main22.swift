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

var words = s.characters.split{$0 == " "}.map(String.init)
print(words)

let vowels: [Character] = ["А", "а", "Е", "е", "Ё", "ё", "И", "и", "О", "о", "У", "у", "Ы", "ы", "Э", "э", "Ю", "ю", "Я", "я"]

var count = 0

for word in words {
    var v = 0
    word.forEach {
        if vowels.contains($0) {
            v += 1
        }
    }
    if v > 3 {
        count += 1
    }
}
print(count)
