#!/usr/bin/swift

/** 
 *  Write a method that checks if there is at least one pair of
 *  numbers which sum equals target. arr=[1, 3, 4] and target=5
 *  result is true because the pair (1,4) sums to five.
 */

func twoSum(arrayInt: [Int], targetInt: Int) -> String {
    var result: Bool = false
    for p in arrayInt {
        for q in arrayInt {
            if ((p != q) && (p+q == targetInt)) {
            result = true
            }
        }
    }
    if result == true {
        return "At least one pair has sum equal to \(targetInt)!"
    }
    else {
        return "No pair has sum equal to \(targetInt)!"
    }
}

func main() {
    print("Enter array of integers (space separated e.g. '1 2 3'): ")
    let arrayInt: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
    print("Target: ")
    let targetInt: Int = Int(readLine()!)!
    print(twoSum(arrayInt: arrayInt, targetInt: targetInt))
}

main()