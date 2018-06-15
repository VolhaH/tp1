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
}

print()

arr.sort {
    var sum0 = 0
    var sum1 = 0
    for var i in 0..<$0.count {
        if ($0[i] % 2 != 0) {
            sum0 += $0[i]
        }
    }
    for var i in 0..<$1.count {
        if ($1[i] % 2 != 0) {
            sum1 += $1[i]
        }
    }
    return sum0 < sum1
}

for var row in 0..<arr.count {
    print(arr[row])
}
