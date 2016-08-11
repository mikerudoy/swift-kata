//: [Previous](@previous)

// Вася хочет собрать пирамидку . есть фиксированная ширина основания, есть входное количество кубиков и есть высота башни которую нужно построить каждый следующий этаж должнен отличаться только на 1 или (+1 или -1) может ли Вася построить такую пирамидку и если может то вывести количество кубиков на каждом этаже

import Foundation

var str = "Hello"

func reverse(s:String) -> String {
    var r:String = "";
    var c = s.characters;
    for _ in 0..<c.count {
        r.append(c.popLast()!)
    }
    return r
}

print(reverse(str), separator: "")

//func factorial(n:Double) -> Double {
//    if (n == 1) { return 1}
//    else {return n*factorial(n-1)}
//}
//
//factorial(170)



//: [Next](@next)
