import UIKit

var greeting = "Hello, playground"

// Two numbers Question
var arrayss = [3, 5, -4, 8, 11, 1, -1, 6]
var targetSum = 10
var answerArray: [Int] = []

func twoNumberSums(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    array.sort()
    var leftPointer = 0
    var rightPointer = array.count - 1
    while leftPointer < rightPointer {
        let leftmost = array[leftPointer]
        let rightmost = array[rightPointer]
        
        let currentSum = leftmost + rightmost
        if currentSum == targetSum {
            return[leftmost, rightmost]
        }
        else if currentSum < targetSum {
            leftPointer = leftPointer + 1
        }
        else if currentSum > targetSum {
            rightPointer = rightPointer - 1
        }
    }
    return []
}

func twoNumberSumss(_ array: inout [Int], _ targetSum: Int) -> [Int] {
  for i in array {
  let newData = targetSum - i
   if array.contains(newData) && i != newData {
      return [newData,i]
    }
  }
  return []
}

func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    if array.count == 1 {
      return []
    }
    else {
    for i in 0..<array.count-1 {
        for j in i + 1..<array.count {
            if array[i] + array[j] == targetSum {
                if array[i] != array[j] {
                    answerArray.append(array[i])
                    answerArray.append(array[j])
                    return answerArray
                }
            }
        }
    }
    }
    return []
  }
