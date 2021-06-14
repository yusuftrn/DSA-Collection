import Foundation

  
test(of: "Array Challenge") {
  var today = DateModel(month: 6, day: 13, year: 2021)
  for _ in 0..<10 {
    today = today.next()
    print(today.toString())
    print(today.dayOfWeek())
  }
}
