//: Playground - noun: a place where people can play

import Foundation

func sum(s1:String, s2:String) -> String {
    let s1c = [Character](s1.characters)
    let s2c = [Character](s2.characters)
    let s1l = s1c.count
    let s2l = s2c.count
    let maxLen = max(s1l, s2l)
    
    var result = Array<Character?>(count: maxLen+1, repeatedValue: nil)
    var perenos = false;
    
    for i:Int in 0 ..< maxLen {
        var c1:Character?
        var c2:Character?
        if (i < s1l) {
            c1 = s1c[s1l-i-1]
        }
        if (i < s2l) {
            c2 = s2c[s2l-i-1]
        }
        var r:Int = 0
        if let c1u:Character = c1 {
            if let c2u:Character = c2 {
                r = Int(String(c1u))! + Int(String(c2u))!
            } else {
                r = Int(String(c1u))!
            }
        } else {
            r = Int(String(c2!))!
        }
        
        if (perenos) {
            r+=1
            perenos = false
        }
        
        var rString = String(r)
        if (strlen(rString) > 1) {
            perenos = true
           rString = rString.substringFromIndex(rString.startIndex.advancedBy(1))
        }
        result[maxLen - i - 1 ] = Character(rString)
    }
    
    var sResult:String = ""
    for i:Int in 0 ..< maxLen {
        if let rc =  result[i] {
            sResult = sResult + String (rc)
        }
    }
    if (perenos) {
        sResult = "1" + sResult
    }
    
    return String(sResult)
}

print(sum("11", s2:"991"))


