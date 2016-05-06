
import Foundation

func sumArray(a:[Int], sum:Int) -> ([Int], Int) {
    var b = a;
    if (a.count == 0) {return ([], 0)}
    if (a.count == 1) {return ([], sum+a[0])} else
    {
        let last:Int = b.popLast()!;
        return sumArray(b, sum: sum + last)
    }
}

XCTAssertEqual(sumArray([], sum: 0).1, 0)
XCTAssertEqual(sumArray([15], sum: 0).1, 15)
XCTAssertEqual(sumArray([1,2,3,4,5], sum: 0).1, 15)
XCTAssertEqual(sumArray([1,2,3,4,-5], sum: 0).1, 5)
XCTAssertEqual(sumArray([1,1,2,3,5,8,13,21], sum: 0).1, 54)
