/*
 Challenge 4: Does one string contain another?

 Difficulty: Easy Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.

 Sample input and output

 • The code "Hello, world".fuzzyContains("Hello") should return true.

 • The code "Hello, world".fuzzyContains("WORLD") should return true.

 • The code "Hello, world".fuzzyContains("Goodbye") should return false.
 */

extension String {

  //solution1
  func stringContains(_ string: String) -> Bool {
    return range(of: string, options: .caseInsensitive) != nil
  }
  //solution2
  func naiveContains(_ str: String) -> Bool {
    let selfLen = self.count
    var t = 0
    for i in 0..<selfLen {
      if t == str.count {
        break
      }
      if (self[i] == str[t]){
        t += 1
      } else {
        t = 0
      }
    }
    return t < str.count ? false : true
  }
}

// for string subscript
extension String {

  var length: Int {
    return count
  }

  subscript (i: Int) -> String {
    return self[i ..< i + 1]
  }

  func substring(fromIndex: Int) -> String {
    return self[min(fromIndex, length) ..< length]
  }

  func substring(toIndex: Int) -> String {
    return self[0 ..< max(0, toIndex)]
  }

  subscript (r: Range<Int>) -> String {
    let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                        upper: min(length, max(0, r.upperBound))))
    let start = index(startIndex, offsetBy: range.lowerBound)
    let end = index(start, offsetBy: range.upperBound - range.lowerBound)
    return String(self[start ..< end])
  }
}
