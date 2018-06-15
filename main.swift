//
//  main.swift
//  try1
//
//  Created by Volha on 15.06.18.
//  Copyright © 2018 Volha. All rights reserved.
//

import Foundation

print("Enter size:")
let num = readLine()
var n = Int(num!)!

var arr = Array(repeating: Array(repeating: 0, count: n), count: n)

for var row in 0..<arr.count {
    for var col in 0..<arr[row].count {
        arr[row][col] = Int(arc4random_uniform(UInt32(n)))
    }
    print(arr[row])
    print(arr[row].reduce(0, +))
}

print()

arr.sort {
    $0.reduce(0, +) < $1.reduce(0, +)
}

for var row in 0..<arr.count {
    print(arr[row])
    print(arr[row].reduce(0, +))
}
