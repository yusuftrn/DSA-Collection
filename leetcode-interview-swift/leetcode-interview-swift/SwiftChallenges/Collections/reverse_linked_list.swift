/*
 Challenge 51: Reversing linked lists

 Difficulty: Tricky
 Expand your code from challenge 43 so that it has a reversed() method that returns a copy of itself in reverse.
 Tip: Don’t cheat! It is not a solution to this problem just to reverse the alphabet letters before you create your linked list. Create the linked list alphabetically, then write code to reverse it.
 Sample input and output
 • When you call reversed() on your alphabet list, running printNodes() on the return value should print the English alphabet printed to the screen in reverse,
 i.e. “z y x … d b c a”.
 */
import Foundation

//implementation1: all in one solution
extension LinkedList {
  func reversed() -> LinkedList<T> {
    let copy = LinkedList<T>()
    if let startNode = start {
      var prevCopyNode = LinkedListNode(value: startNode.value)
      var currNode = start?.next
      while let node = currNode {
        let copyNode = LinkedListNode(value: node.value)
        copyNode.next = prevCopyNode
        prevCopyNode = copyNode
        currNode = currNode?.next
      }
      copy.start = prevCopyNode
    }
    return copy
  }
}

//implementation2
extension LinkedList {
  func copyLL() -> LinkedList<T> {
    let copy = LinkedList<T>()
    if let startNode = start {
      copy.start = LinkedListNode(value: startNode.value)
      var prevCopyNode = copy.start
      var currNode = start?.next
      while let node = currNode {
        let copyNode = LinkedListNode(value: node.value)
        prevCopyNode?.next = copyNode
        prevCopyNode = copyNode
        currNode = currNode?.next
      }
    }
    return copy
  }
  //in-place reverse()
  func reverse() {
    var currNode = start
    var newNext: LinkedListNode<T>? = nil
    while let node = currNode {
      let next = node.next
      node.next = newNext
      newNext = node
      currNode = next
    }
    start = newNext
  }
  func reversedLL() -> LinkedList<T> {
    let copy = self.copyLL()
    copy.reverse()
    return copy
  }
}
