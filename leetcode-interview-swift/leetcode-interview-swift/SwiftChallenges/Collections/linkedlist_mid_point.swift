/*
 Challenge 44: Linked list mid-point
 Difficulty: Easy
 Extend your linked list class with a new method that returns the node at the mid point of the linked list using no more than one loop.
 Tip: If the linked list contains an even number of items, returning the one before or the one after the center is acceptable.
 Sample input and output:
 • If the linked list contains 1, 2, 3, 4, 5, your method should return 3.
 • If the linked list contains 1, 2, 3, 4, your method may return 2 or 3.
 • If the linked list contains the English alphabet, your method may return M or N.
 */
import Foundation

//class LinkedListNode<T> {
//  var value: T
//  var next: LinkedListNode?
//
//  init(value: T) {
//    self.value = value
//  }
//}
//
//class LinkedList<T> {
//  var start: LinkedListNode<T>?
//
//  func traverseNode() {
//    var currNode = start
//    while let node = currNode {
//      print(node.value, terminator: " -> ")
//      currNode = node.next
//    }
//  }
//}

extension LinkedList {
  var centerNode: LinkedListNode<T>? {
    var slow = start
    var fast = start
    while fast != nil && fast?.next != nil {
      slow = slow?.next
      fast = fast?.next?.next
    }
    return slow
  }
}
