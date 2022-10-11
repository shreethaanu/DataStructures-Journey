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


// ------------------ ------------------ ------------------ ------------------ ------------------

// Validate Subsequence

var mainArray = [1, 1, 1, 1, 1]
var subsequenceArray = [1, 1, 1]

var mainArrayPointer = 0
var subsequencePointer = 0

func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    print(mainArrayPointer)
    if array == sequence {
        return true
    }
    if sequence.count > array.count {
        return false
    }
    while mainArrayPointer < array.count, subsequencePointer < sequence.count {
            if array[mainArrayPointer] == sequence[subsequencePointer] {
                subsequencePointer = subsequencePointer + 1
                print(subsequencePointer)
            }
        mainArrayPointer += 1
        }
    if subsequencePointer == sequence.count {
        return true
    }
    return false
}

// Sorted squared Array


func sortedSquaredArray(_ array: [Int]) -> [Int] {
    // Write your code here.
    var returnarr: [Int] = []
    for i in array {
        returnarr.append(i*i)
        returnarr.sorted()
    }
    return returnarr
  }


func sortedSquaredArrayss(_ array: [Int]) -> [Int] {
    var revArr: [Int] = array.reversed()
    var returnarr: [Int] = []
    print(revArr)
    for i in 0...array.count - 1 {
        for j in 0...revArr.count - 1 {
            if array[i]*array[i] < revArr[j]*revArr[j] {
                returnarr.append(array[i]*array[i])
            }
            else {
                returnarr.append(revArr[j]*revArr[j])
            }
        }
    }
  return returnarr
}


print(sortedSquaredArrayss([-2, -4]))

var n = Set<String>()
n.insert("serenity")
n.insert("serenitya")
n.insert("serenaity")
n.insert("serenity")
print(n.count)

func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }
}

print(fizzbuzz(number: 15))

for i in stride (from: 1, to: 17, by: 4) {
    print(i)
}

let num = [1,2,3].map { [$0,$1] }
