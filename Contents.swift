import UIKit

//: MARRK: SỰ KHÁC BIỆT GIỮA VÒNG LẶP FORLOOP VÀ FOREACH

//class Employee {
//    var employeeArray = ["Alex", "Jorge","Andrew"]
//    var numberArray = [1, 2, 3, 4, 5]
//    func printUsingForLoop() {
//        for employee in employeeArray {
//            print("Employee", employee)
//            return
//        }
//    }
//
//    func printUsingForEach() {
//        employeeArray.forEach { (employee) in
//            print("Employee", employee)
//            return
//        }
//    }
//
//    func printInt() {
//        numberArray.forEach { (number) in
//            print("Number", number)
//        }
//        for i in 0...numberArray.count {
//            print(i)
//        }
//    }
//}
//let emp = Employee()
//emp.printUsingForLoop()
//print("***************************")
//emp.printUsingForEach()
//print("***************************")
//emp.printInt()




// MARK: HÀM LỌC .MAP

//. Lọc bằng tay:
//var numberArray = [1, 2, 3, 4, 5]
//// traditional way
//var squareArray: [Int] = []
//for number in numberArray {
//    squareArray.append((number * number))
//}
//print(squareArray)

//. Lọc bằng .MAP
//var numberArrayMap = [1, 2, 3, 4, 5]
//// Cach 1
//var squareArray1 = numberArrayMap.map( { (value: Int) -> Int in
//    return value * value
//})
//// cach 2
//var squareArray2 = numberArrayMap.map { (value: Int) in
//    return value * value
//}
//// cach 3
//var squareArray3 = numberArrayMap.map { value  in
//    value * value
//}
//// cach 4
//
//var squareArray4 = numberArrayMap.map { $0 * $0 }
//print(squareArray1)
//print("*********************")
//print(squareArray2)
//print("*********************")
//print(squareArray3)
//print("*********************")
//print(squareArray4)





//// MARK: HÀM LỌC .FILTER
////. Lọc bằng tay:
//let numberArray = [Int](1...10)
//
//// Traditional way
//
//var evenNumberArray: [Int] = []
//for number in numberArray {
//    if (number % 2 == 0) {
//        evenNumberArray.append(number)
//    }
//}
//
//print(evenNumberArray)
//
//
////. Lọc bằng .Filter
//
//let eventNumberArray = numberArray.filter { ($0 % 2 != 0) }
//
//print(eventNumberArray)




/*. MARK: CÁCH SỬ DỤNG .REDUCE
 Reduce kết hợp tất cả các item trong một collection tạo ra một giá trị mới. VD: ta tính tổng tất cả các phần từ trong một mảng INT
 */

// Viết bằng tay
//let numbers = [1, 2, 3, 4, 5]
//var sum = 0
//for number in numbers {
//    sum += number
//}
//print(sum)
//
//// Sử dụng .reduce
//var sum1 = numbers.reduce(0, {($0 + $1)} )
//print(sum1)
//var sum2 = numbers.reduce(0, +)
//print(sum2)
//// .reduce có thể sử dụng được với cả String
//
//var stringArray = ["one", "two", "three"]
//var oneTwo = stringArray.reduce("", +)
//print(oneTwo)
//
//var cacular = numbers.reduce(1, *)
//print(cacular)



/*. MARK: FLATMAP
 Khi ta muốn kết hợp hai mảng khác nhau. VD: Dưới đây ta có một mảng gồm 2 phần tử là 2 mảng khác nhau
 và chúng ta muốn kết hợp 2 mảng này lại thành 1 mảng
 */
//. Viết Bằng Tay
//let arrayInArray = [[1, 2, 3], [4, 5, 6]]
//var resultArray: [Int] = []
//for array in arrayInArray {
//    resultArray += array
//}
////. Viết bằng FlatMap
//let flattenedArray = arrayInArray.flatMap{$0}
//print(flattenedArray)
//
////. Hàm FlatMap xoá nil khỏi collection
//let people: [String?] = ["", "", nil, "", nil]
//var validPeople = people.flatMap { $0 }
//print(validPeople)
//
//let people1 = [["A", "B", "C"], ["D", "E", "F"]]
//var validPeople1 = people1.flatMap { $0 }
//print(validPeople1)





/*. MARK: CHAINING
 Cách chúng ta xâu chuỗi các hàm ở trên lại với nhau để đạt được một kết quả nhất định.
 */
//let arrayInArray = [[1, 2, 3], [4, 5, 6]]
//var resultValue = arrayInArray.flatMap{ $0 }.filter{ $0 % 2 == 0 }.map{ $0 * $0 }
//print(resultValue)
