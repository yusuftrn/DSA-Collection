import Foundation

func insertionSort(_ arr: inout [Int]) -> [Int] {
  // eleman sayımız
  let count = arr.count
  
  // dizideki ikinci elemandan başlayarak iterasyon yap
  for index in 1..<count {
    
    // ikinci elamanı önceki ile kıyaslayacağımız için onun değerini hafızada tutalım
    let value = arr[index]
    var position = index
    // elimizdeki veriyi önceki ile kıyaslayalım
    while position > 0 && arr[position - 1] > value {
      // eğer önceki değer elimizdeki value'den büyükse yer değişimi yapalım
      arr[position] = arr[position - 1]
      position -= 1
    }
    arr[position] = value
  }
  return arr
}

var data = [3, 22, 34, 5, 1, 11, 23]
print(insertionSort(&data))

/// OUTPUT: [1, 3, 5, 11, 22, 23, 34]
