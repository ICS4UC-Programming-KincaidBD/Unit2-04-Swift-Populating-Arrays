import Foundation

// declare array with function
func populateArray() -> [Int] {
    // adds 10 random numbers between 0 and 100 to the array and returns it
	(0..<10).map { _ in Int.random(in: 0..<100) }
}

// function to calculate the avg of the array passed in as a parameter
func averageArray(_ numberArray: [Int]) -> Int {
    // check if the array is empty, if it is return 0
	guard !numberArray.isEmpty else { return 0 }
    // calculate the average by summing the array and then dividing by the length of the array
	return numberArray.reduce(0, +) / numberArray.count
}

// loop to call the populateArray and averageArray functions 5 times
for _ in 0..<5 {
    // declare constants to call method and attach it to a variable
	let numbers = populateArray()
	let average = averageArray(numbers)

	print(numbers.map(String.init).joined(separator: " "))

    // sort the numbers in the array into a variable
	let sortedNumbers = numbers.sorted()
    // print the sorted numbers and the average of the array
	print("\(sortedNumbers.map(String.init).joined(separator: " ")) Average: \(average)")
	print()
}
