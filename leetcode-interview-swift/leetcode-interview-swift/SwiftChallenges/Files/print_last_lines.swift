/*
 Challenge 27: Print last lines
 Difficulty: Easy
 
 Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all on a single line separated by commas.
 Sample input and output
 Here is your test input file:
 -------------
 Antony And Cleopatra
 Coriolanus
 Cymbeline
 Hamlet
 Julius Caesar
 King Lear
 Macbeth
 Othello
 Twelfth Night
 --------------
 • If asked to print the last 3 lines, your code should output “Twelfth Night, Othello, Macbeth”.
 • If asked to print the last 100 lines, your code should output “Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony and Cleopatra”.
 • If asked to print the last 0 lines, your could should print nothing.
 */

func challenge27(file: String, lineCount: Int) {
  guard let input = try? String(contentsOfFile: file) else { return }
  var lines = input.components(separatedBy: "\n")
  guard lines.count > 0 else { return }
  lines.reverse()
  for i in 0..<min(lines.count, lineCount){
    print("\(lines[i]), ")
  }
}
