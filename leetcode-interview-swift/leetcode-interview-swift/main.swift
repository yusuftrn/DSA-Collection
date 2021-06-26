import Foundation


test(of: "Array Challenge") {
  let myS = StackLL()
  myS.push(data: 5)
  myS.push(data: 6)
  print(myS.size())
  print(myS.pop() ?? "no data")
  print(myS.size())
  print(myS.pop() ?? "no data")
  print(myS.pop() ?? "no data")
}

