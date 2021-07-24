import Foundation


func firstLast(_ arr: [Any]) -> [Any] {
  var new = [Any]()
  let data = arr.sorted { $0 > $1 }
  
  new.append(data[0])
  new.append(data[data.count - 1])
  
  return new
}

print(firstLast([1, 2, 3, 5, 4, 6, 199, 2]))
