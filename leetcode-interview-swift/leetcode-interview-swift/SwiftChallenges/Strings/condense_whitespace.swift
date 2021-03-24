/*
 Challenge 7: Condense whitespace

 Difficulty: Easy Write a function that returns a string with any consecutive spaces replaced with a single space.

 Sample input and output

 I’ve marked spaces using “[space]” below for visual purposes:

 • The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.

 • The string “[space][space][space][space]a” should return “[space]a”.

 • The string “abc” should return “abc”.
 */


func challenge7A(word: String) -> String {
  let out = word.components(separatedBy: .whitespacesAndNewlines)

  return out.filter { !$0.isEmpty }.joined(separator: " ")
}

//brute-force
func challenge7B(word: String) -> String {
  var seenSpace = false
  var out = ""

  for c in word {
    if c == " " {
      if seenSpace {
        continue
      }
      seenSpace = true
    } else {
      seenSpace = false
    }
    out.append(c)
  }
  return out
}


//using regular expressions => “[space]+” means “match one or more spaces”
func challenge7C(word: String) -> String {
  return word.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}
