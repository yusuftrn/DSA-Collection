/*
 Challenge 21: Counting binary ones
 Difficulty: Tricky
 Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.

 Sample input and output:
 • The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.
 • The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.
 */

func challenge21(num: Int) -> (Int?, Int?) {
  
  func ones(in num: Int) -> Int {
    let currBinary = String(num, radix: 2)
    return currBinary.filter { (char: Character) -> Bool in char == "1" }.count
  }
  
  let targetOnes = ones(in: num)
  var nextHighest: Int? = nil
  var nextLowest: Int? = nil
  
  for i in num+1...Int.max {
    if ones(in: i) == targetOnes {
      nextHighest = i
      break
    }
  }
  
  for i in (0..<num).reversed() {
    if ones(in: i) == targetOnes {
      nextLowest = i
      break
    }
  }
  
  return (nextHighest, nextLowest)
}
