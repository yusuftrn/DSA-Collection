/*
 Challenge 57: Isomorphic values
 Difficulty: Easy
 Write a function that accepts two values and returns true if they are isomorphic. That is, each part of the value must map to precisely one other, but that might be itself.
 Tip: Strings A and B are considered isomorphic if you can replace all instances of each letter with another.
 For example, “tort” and “pump” are isomorphic, because you can replace both Ts with a P, the O with a U, and the R with an M.
 For integers you compare individual digits, so 1231 and 4564 are isomorphic numbers. For arrays you compare elements, so [1, 2, 1] and [4, 8, 4] are isomorphic.
 -> These are all isomorphic values:
 • “clap” and “slap”
 • “rum” and “mud”
 • “pip” and “did”
 • “carry” and “baddy”
 • [1, 2, 1, 2, 3] and [4, 5, 4, 5, 6]
 
 -> These are not isomorphic values:
 • “carry” and “daddy” – the Rs have become D, but C has also become D.
 • “did” and “cad” – the first D has become C, but the second has remained D.
 • “maim” and “same” – the first M has become S, but the second has become E.
 */
import Foundation

func challenge57(first firstValue: Any, second secondValue: Any) -> Bool {
  let first = String(describing: firstValue)
  let second = String(describing: secondValue)
  
  var charMap = [Character: Character]()
  for (index, char) in first.enumerated() {
    let otherChar = second[index]
    if let currMapping = charMap[char] {
      if currMapping != Character(otherChar) {
        return false
      }
    } else {
      if charMap.values.contains(Character(otherChar)) {
        return false
      }
      charMap[char] = Character(otherChar)
    }
  }
  return true
}
