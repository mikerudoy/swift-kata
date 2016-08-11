//: Playground - noun: a place where people can play

import UIKit

let kUnicodeScalarBase = 48;

func sum(s1:String, _ s2:String) -> String {
    let firstStringCharactersArray = [Character](s1.characters)
    let secondStringCharactersArray = [Character](s2.characters)
    let firstStringLength = firstStringCharactersArray.count
    let secondStringLength = secondStringCharactersArray.count
    let maxLen = max(firstStringLength, secondStringLength)
    
    var result = Array<Character>()
    
    var overflow = false;
    
    for i:Int in 0 ..< maxLen {
        var currentDigitForFirstNumber:Character = "0"
        var currentDigitForSecondNumber:Character = "0"
        if (i < firstStringLength) {
            currentDigitForFirstNumber = firstStringCharactersArray[firstStringLength-i-1]
        }
        if (i < secondStringLength) {
            currentDigitForSecondNumber = secondStringCharactersArray[secondStringLength-i-1]
        }
        var resultDigit:Int = 0
        let currentDigitForFirstNumberUnwrapped = Int(String(currentDigitForFirstNumber))!
        let currendDigitForSecondNumberUnwrapped = Int(String(currentDigitForSecondNumber))!
        resultDigit = currentDigitForFirstNumberUnwrapped + currendDigitForSecondNumberUnwrapped
        
        if (overflow) {
            resultDigit+=1
            overflow = false
        }
        if (resultDigit > 9) {
            overflow = true
            result.insert(Character(UnicodeScalar(kUnicodeScalarBase - 10 + resultDigit)), atIndex:0)
        } else {
            result.insert(Character(UnicodeScalar(kUnicodeScalarBase + resultDigit)), atIndex: 0)
        }
    }
    
    var sumString:String = ""
    for i:Int in 0 ..< maxLen {
        sumString = sumString + String (result[i])
    }
    if (overflow) {
        sumString = "1" + sumString
    }
    
    return String(sumString)
}

XCTAssertEqual(sum("1", "1"), "2")
XCTAssertEqual(sum("7", "8"), "15")
XCTAssertEqual(sum("70", "8"), "78")
XCTAssertEqual(sum("700", "8"), "708")
XCTAssertEqual(sum("10000000000000000000000000000000000000", "15"), "10000000000000000000000000000000000015")



