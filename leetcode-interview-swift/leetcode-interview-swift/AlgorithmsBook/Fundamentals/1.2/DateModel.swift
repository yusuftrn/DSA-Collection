//
//  DateModel.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 14.06.2021.
//

class DateModel: Comparable {
  
  //const days
  let DAYS: [Int] = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  
  let month: Int
  let day: Int
  let year: Int
  
  init(month: Int, day: Int, year: Int) {
    self.month = month
    self.day = day
    self.year = year
  }
  
  init(date: String) {
    let fields = date.split(separator: "/")
    if fields.count != 3 {
      fatalError("Wrong input")
    }
    month = Int(String(fields[0]))!
    day = Int(String(fields[1]))!
    year = Int(String(fields[2]))!
    if !isValid(month, day, year) {
      fatalError("Invalid Date.")
    }
  }
  
  private func isValid(_ month: Int, _ day: Int, _ year: Int) -> Bool {
    if month < 1 || month > 12 { return false }
    if day < 1 || day > DAYS[month] { return false }
    if month == 2 && day == 29 && !isLeapYear(year) { return false }
    return true
  }
  
  private func isLeapYear(_ year: Int) -> Bool {
    if year % 400 == 0 { return true }
    if year % 100 == 0 { return false }
    return year % 4 == 0
  }
  
  public func next() -> DateModel {
    if isValid(month, day+1, year) {
      return DateModel(month: month, day: day+1, year: year)
    } else if isValid(month+1, 1, year) {
      return DateModel(month: month+1, day: 1, year: year)
    } else {
      return DateModel(month: 1, day: 1, year: year+1)
    }
  }
  
  public func isAfter(_ otherDay: DateModel) -> Bool {
    return DateModel(month: month, day: day, year: year) > otherDay
  }
  
  public func isBefore(_ otherDay: DateModel) -> Bool {
    return DateModel(month: month, day: day, year: year) < otherDay
  }
  
  public func isEquals(_ otherDay: DateModel) -> Bool {
    return DateModel(month: month, day: day, year: year) == otherDay
  }
  
  // Sakamoto's algorithm
  public func dayOfWeek() -> String {
    var localYear = year
    let table: [Int] = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
    if month < 3 { localYear -= 1}
    let today = (localYear + localYear/4 - localYear/100 + localYear/400 + table[month-1] + day) % 7
    switch today {
    case 1:
      return "Monday"
    case 2:
      return "Tuesday"
    case 3:
      return "Wednesday"
    case 4:
      return "Thursday"
    case 5:
      return "Friday"
    case 6:
      return "Saturday"
    case 7:
      return "Sunday"
    default:
      return "UNDEFINED"
    }
  }
  
  static func == (lhs: DateModel, rhs: DateModel) -> Bool {
    return (lhs.day == rhs.day) && (lhs.month == rhs.month) && (lhs.year == rhs.year)
  }
  
  static func < (lhs: DateModel, rhs: DateModel) -> Bool {
    if lhs.year < rhs.year {
      return true
    } else if lhs.month < rhs.month {
      return true
    } else if lhs.day < rhs.day {
      return true
    } else {
      return false
    }
  }
  
  public func toString() -> String {
    return String(month) + "/" + String(day) + "/" + String(year)
  }
}
