import UIKit

//Q1
var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]

for color in colorHex {
    print(color)
}

//Q2
var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]
var countDict: [String: Int] = [:]

for color in colors{
    if countDict[color] == nil{
        countDict[color] = 1
    } else {
        countDict[color]! += 1
    }
}

for (key, value) in countDict {
    print(key + " - " + "\(value)")
}

//Q3
func fibo(n: Int) -> [Int]{
    var arr = [1,1]
    
    var count = 2
    var fNum = 1
    var prev_num = 1
    if n > 2 {
        while count < n {
            let loop_num = prev_num + fNum
            arr.append(loop_num)
            prev_num = fNum
            fNum = loop_num
            count += 1
        }
    } else if n == 1{
        return [1]
    }
    
    return arr
}
//example:

print(fibo(n: 7)) //-> [1,1,2,3,5,8,13]

print(fibo(n: 5)) //-> [1,1,2,3,5]

//Q4
func power2(n: Int){
    var powers = 2
    while powers < n{
        print(powers)
        powers *= 2
    }
}

power2(n: 9)

//Q5
var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]

func studInTrac(){
    print("There are \(coursesAndStudents[0].1) students in the  \(coursesAndStudents[0].0) track")
    print("There are \(coursesAndStudents[1].1) students in the  \(coursesAndStudents[1].0) track")
    print("There are \(coursesAndStudents[2].1) students in the  \(coursesAndStudents[2].0) track")
    print("There are \(coursesAndStudents[3].1) students in the  \(coursesAndStudents[3].0) track")
}
studInTrac()

//Q6
func checkIfSame(arr: [Int])-> Bool{
    var answer = false
    if arr[0] == arr[arr.count - 1]{
        answer = true
    }
    return answer
}

print(checkIfSame(arr: [1,2,3,4,1]))

//Q7
func computeSum(arr: [Int])-> Int{
    var answer = 0
    for num in arr{
        answer += num
    }
    return answer
}

print(computeSum(arr: [2,2,2]))

//Q8
func rotateElementsLeft(arr: [Int])-> [Int]{
    var loop_num = 0
    var answer : [Int] = []
    while loop_num < arr.count {
        answer.append(arr[arr.count - loop_num])
        loop_num += 1
    }
    return answer
}

print(rotateElementsLeft(arr: [1,2,3,4,5,6,7,8,9]))

//Q9
func uniqueTest(str: String)-> Bool{
    var answer = true
    for (i1, l1) in str.enumerated(){
        for (i2, l2) in str.enumerated(){
            if l1 == l2 && i1 != i2{
                answer = false
            }
        }
    }
    return answer
}

print(uniqueTest(str: "string"))

//Q10
func characterCount(str: String, char: Character)-> Int{
    var answer = 0
    for e in str{
        if e == char{
            answer += 1
        }
    }
    return answer
}

print(characterCount(str: "🙃 my day is up & down 🙃!", char: "🙃"))
