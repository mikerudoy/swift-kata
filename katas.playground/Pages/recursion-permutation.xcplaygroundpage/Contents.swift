//: [Previous](@previous)

import Foundation

let a = [1,2,3,4]

var r:[Int] = []
var fr:[[Int]] = []

func permutate(a:[Int]) -> [[Int]] {
    if (a.count == 0) {
        fr.append(r)
    } else {

    for i in 0..<a.count {
        var b = a
        let ai:Int = a[i]
        b.removeAtIndex(i)
        r = r+[ai]
        permutate(b)
        r.popLast()
    }
    }
    
    return fr
}

print(permutate(a))
