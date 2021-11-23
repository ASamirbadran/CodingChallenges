import Darwin
////protocol
//protocol test: class {
//    func testMethod()
//}
//
//
//
//class vc {
//    private weak var testDelegate : test?
//
//    func increment() {
//        testDelegate?.testMethod()
//    }
//}
//
//
//





////create an interface and implement it
//protocol PerformOperation: class {
//    func performSmth()
//}
//
//class testClass: PerformOperation {
//    func performSmth() {
//        print("Test")
//    }
//}





////singleton
//class TestSingleton {
//    static var shared: TestSingleton = TestSingleton()
//
//    func anything() {
//
//    }
//}
//
//
//TestSingleton.shared.anything()
//
//
//


////Map, FlatMap and CompactMap
//let tags = ["Swift", "Basics"]
//tags.map { $0.lowercased() }
//let filteted = tags.filter { $0.starts(with: "B") }
//
//
//let numbers = ["42", "19", "notANumber"]
//let ints = numbers.compactMap { Int($0) }
//let numb = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//let result = numb.flatMap({ $0 })
//
//print(result)
//
//
//






//struct TestCodable: Codable {
//    var x: String?
//
//    enum CodingKeys: String, CodingKey {
//        case x = "lol"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        x = try values.decodeIfPresent(String.self, forKey: .x)
//    }
//}
//
//



//func testGenerics<T>(parms: T) {
//    if let parms  = parms as? Int {
//        print(parms)
//    }
//}
//
//


//func findTheNumberOfPairsOfSocks() {
//    let array  = [10,20, 20, 10, 10, 30, 50, 10, 20]
//    var count = 0
//    var set = Set<Int>()
//    for i in 0..<array.count {
//        if (set.insert(array[i]).inserted) {
//        } else {
//            set.remove(array[i])
//            count += 1
//        }
//    }
//    print(count)
//}
//findTheNumberOfPairsOfSocks()



//func rotLeft(a: [Int], d: Int) -> [Int] {
//    // Write your code here
//    var newArray = [Int]()
//
//    for i in d..<a.count{
//                newArray.append(a[i])
//    }
//    print(newArray)
//    for i in 0..<d {
//        newArray.append(a[i])
//    }
//
//    return newArray
//}
//
//print(rotLeft(a: [1,2,3,4,5], d: 4))




//func  minimumSwaps( arr: [Int]) {
//    var arr = arr
//    var count = 0
//    for i in 0..<(arr.count) {
//        while (arr[i] != i+1) {
//            let temp = arr[i]
//            arr[i] = arr[temp-1]
//            arr[temp-1] = temp
//            count += 1
//            print(arr)
//
//        }
//    }
//    print(count)
//}
//minimumSwaps(arr: [4,3,1,2])


//func countingSort(arr: [Int]) -> [Int] {
//    let frequencyArray = 100
//    var result:[Int] = Array(repeating: 0, count: frequencyArray )
//    for i in arr {
//        result[i] += 1
//    }
//    return result
//}
//
//print (countingSort(arr: [1,1,3,2,1]))


    //now we print the array sorted
////now we print it sorted using the counting sort we did
//let countingArray = countingSort(arr: [1,1,3,2,1])
//var newSortedArray = [Int]()
//for index in 0..<countingArray.count {
//    let count = countingArray[index]
//    if (count != 0) {
//        for i in 0..<count {
//            newSortedArray.append(index)
//        }
//    }
//}
//print(newSortedArray)



//func checkIfIsPalyndrome() -> String {
//    let string = "radar"
//    let characters = Array(string)
//    var isPalyndrome = false
//    for index in 0..<characters.count {
//        if characters[index] == characters[(characters.count - 1) - index] {
//            isPalyndrome = true
//        } else {
//            isPalyndrome = false
//            break //dont forget this
//        }
//    }
//    if isPalyndrome {
//        return "YES"
//    } else {   f
//        return "NO"
//    }
//}
//
//print(checkIfIsPalyndrome())
//
//func isPalindrome(myString:String) -> Bool {
//    let reverseString = String(myString.reversed())
//    if(myString != "" && myString == reverseString) {
//        return true
//    } else {
//        return false
//    }
//}
//
//print(isPalindrome(myString: "madam"))

//func minSumOfPairInArray(arr: [Int]) -> Int {
//    var firstMin = Int.max
//    var secondMin = Int.max
//    for item in arr {
//        if item < firstMin {
//            secondMin = firstMin
//            firstMin = item
//        } else if ((item < secondMin) && item != firstMin){
//            secondMin = item
//        }
//    }
//
//    return secondMin + firstMin
//}

//print(minSumOfPairInArray(arr: [2, 1, 3]))


//func moveAllElementThatIsZerosToTheLeftWhileMaintaingTheOtherElementOrder(arr: inout [Int]) -> [Int]{
//    for i in 0..<arr.count {
//        let currentItem = arr[i]
//        if arr[i] == 0 {
//            arr.remove(at: i)
//            arr.insert(currentItem, at: 0)
//        }
//    }
//    return arr
//}
//var arr = [1,10,20,0,59,63,0,88,0]
//print(moveAllElementThatIsZerosToTheLeftWhileMaintaingTheOtherElementOrder(arr: &arr))
//
//print (arr.filter { $0 == 0 } + arr.filter { $0 != 0  }) //another solution

//func findMajorityElementThatAppearsMoreThan(arr: [Int]) -> Int { //(n/2) times n is arraySize
//    var majorElement = 0
//    var majorElementOccurence = 0
//    for item in arr {
//        if majorElementOccurence == 0 {
//            majorElement = item
//        }
//        if item == majorElement {
//            majorElementOccurence += 1
//        } else {
//            majorElementOccurence -= 1
//        }
//    }
//    return majorElement
//}
//print(findMajorityElementThatAppearsMoreThan(arr: [3,2,3]))
//print(findMajorityElementThatAppearsMoreThan(arr: [-1,1,1,1,2,1]))

//func createDictionaryFromArrayOfTuble(arrayOfTuble: [(String,String)]) -> [String: String] {
//    var dictonary = arrayOfTuble.reduce(into: [:]) { $0[$1.0] = $1.1 }
//    return dictonary
//}
//print(createDictionaryFromArrayOfTuble(arrayOfTuble: [("key1", "value1"), ("key2", "value2"), ("key3", "value3")]))


//func insertionSort(arr: [Int]) -> [Int]{
//    var sortedArray = arr
//
//    for index in 1..<sortedArray.count
//    {
//        let value = sortedArray[index]
//        var position = index
//
//        while position > 0 && sortedArray[position - 1] > value {
//            sortedArray[position] = sortedArray[position - 1]
//            position -= 1
//        }
//        sortedArray[position] = value
//    }
//    return sortedArray
//}
//
//print(insertionSort(arr: [70, 36, 40, 95, 22, 55, 26]))
//
//func mergeToSortedArrayOfIntegers(firstArray: inout [Int], secondArray:inout [Int]) -> [Int]{
//
//    var mergedArray = [Int]()
//    while !firstArray.isEmpty {
//
//        if secondArray.isEmpty {
//            mergedArray.append(contentsOf: firstArray)
//        }
//
//        var nextValue = 0
//        if firstArray.first! < secondArray.first! {
//            nextValue = firstArray.first!
//            firstArray.removeFirst()
//        } else {
//            nextValue = secondArray.first!
//            secondArray.removeFirst()
//        }
//        mergedArray.append(nextValue)
//    }
//
//    // Add the remaining elements from array2 if any:
//    return mergedArray + secondArray
//
//}
//
//var arr  = [1,2,3,4,5]
//var arr2  = [6,7,8,9,12]
//
//print(mergeToSortedArrayOfIntegers(firstArray: &arr, secondArray: &arr2))
//






func bubbleSort(_ array: [Int]) -> [Int] {
    var arr = array
    for _ in 0...arr.count {
        for value in 1...arr.count - 1 {
            if arr[value-1] > arr[value] {
                let largerValue = arr[value-1]
                arr[value-1] = arr[value]
                arr[value] = largerValue
            }
        }
    }
    print("Sorted\(arr)")
    return arr
}

bubbleSort([1,3,4,2])










////andela
//var prereqs_courses = [
//    ("Foundations of Computer Science", "Operating Systems"),
//    ("Data Structures", "Algorithms"),
//    ("Computer Networks", "Computer Architecture"),
//    ("Algorithms", "Foundations of Computer Science"),
//    ("Computer Architecture", "Data Structures"),
//    ("Software Design", "Computer Networks")
//]
//
//let dictionary = prereqs_courses.reduce(into: [:]) { $0[$1.0] = $1.1 }
//print(dictionary)
//
//
//
////Software Design
//
////Computer Networks
////Computer Architecture
//
////Data Structures
////Algorithms
////Foundations of Computer Science
//
////Operating Systems


//access enum with subscript []
enum PlanetType: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(key:Int) -> PlanetType? {
        return PlanetType(rawValue: key)
    }
}

let earth = PlanetType[5]
print(earth)
