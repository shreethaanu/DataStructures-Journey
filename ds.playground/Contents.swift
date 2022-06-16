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


// * Complete the 'sockMerchant' function below.
// *There is a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. The player can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus  or . The player must avoid the thunderheads. Determine the minimum number of jumps it will take to jump from the starting postion to the last cloud. It is always possible to win the game.
//For each game, you will get an array of clouds numbered  if they are safe or  if they must be avoided.
// * The function is expected to return an INTEGER.

// * The function accepts following parameters:
// *  1. INTEGER n
// *  2. INTEGER_ARRAY ar


let count = 9
let input = [10, 20, 20, 10, 10, 30, 50, 10, 20]
var resultCount = 0
var resultSet = Set<Int>()

for inputItem in input {
    if resultSet.contains(inputItem) {
        resultSet.remove(inputItem)
        resultCount += 1
    } else {
        resultSet.insert(inputItem)
    }
}
print(resultCount)

/*
 * Complete the 'jumpingOnClouds' function below.
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY c as parameter.
 
 */

let n = 1
let clouds = [0, 0, 1, 0, 0, 1, 0]
var moves = 0
var i = 0

while (i+2 < n){
    if clouds[i+2] == 0 {
        i += 2
    } else {
        i += 1
    }
    moves += 1
}
if i == n - 2 {
    moves += 1
}

/*
 * Complete the 'countingValleys' function below.
 *
 An avid hiker keeps meticulous records of their hikes. During the last hike that took exactly  steps, for every step it was noted if it was an uphill, , or a downhill,  step. Hikes always start and end at sea level, and each step up or down represents a  unit change in altitude. We define the following terms
 

 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER steps
 *  2. STRING path
 */

func countingValleys(steps: Int, path: String) -> Int {
    let pathWay = Array(path)
    let seaLevel = 0
    var currentLevel = seaLevel
    var isCurrentlyInValley = false
    var amountOfValleysWalked = 0
    
    for step in pathWay {
        if step == "U" {
            currentLevel += 1
        } else {
            currentLevel -= 1
        }
        if (currentLevel == seaLevel) && isCurrentlyInValley {
            isCurrentlyInValley = false
            amountOfValleysWalked += 1
        } else if (currentLevel < seaLevel) && !isCurrentlyInValley {
            isCurrentlyInValley = true
        }
    }
    return amountOfValleysWalked
}

print(countingValleys(steps: 8, path: "UDDDUDUU"))



//extension Array where Element: Hashable {
//    func difference(from other: [Element]) -> [Element] {
//        let thisSet = Set(self)
//        let otherSet = Set(other)
//        return Array(thisSet.symmetricDifference(otherSet))
//    }
//}
//
//let names1 = ["John", "Paul", "Ringo"]
//let names2 = ["Ringo", "Paul", "George"]
//let difference = names1.difference(from: names2)




struct Meal {
    let name: String
    let ingredients: [String]
}

let mymeals = Meal(name: "basic", ingredients: ["l","t","r","p"])
let mymeals1 = Meal(name: "basic1", ingredients: ["l","t","x","y"])
let mymeals2 = Meal(name: "basic2", ingredients: ["x","e","r","p"])
let mymeals3 = Meal(name: "basic3", ingredients: ["l","t","x","y"])

let mealData = [mymeals,mymeals1,mymeals2,mymeals3]

func getUniqueMealCount(meals: [Meal]) -> Int {
    var resultArrray: [String] = []
    var mealsData = meals
       for meal in mealsData {
          if meal.ingredients.difference(from: meal.ingredients) != [] {
              resultArrray.append(meal.name)
              mealsData.remove(meal)
          }
          else{
          }
       }
       return resultArrray.count
   }

extension Array where Element:Hashable {
    func difference(from other: [Element]) -> [Element]{
        let thiset = Set(self)
        let otherset = Set(other)
        return Array(thiset.symmetricDifference(otherset))
    }
}

print(getUniqueMealCount(meals: mealData))
