import UIKit

var greeting = "Hello, playground"

    func containsDuplicate(_ nums: [Int]) -> Bool {
        var cureentbool : Bool = true
        for i in nums {
            if nums.contains(i){
                cureentbool = true
            }
            else {
                cureentbool = false
            }
        }
        return cureentbool
    }
containsDuplicate([1,2,3,4])

