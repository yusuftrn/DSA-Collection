/*
 Challenge 54: Binary search trees
 Difficulty: Taxing
 Create a binary search tree data structure that can be initialized from an unordered array of comparable values,
 then write a method that returns whether the tree is balanced.
 Tip #1: There is more than one description of a balanced binary tree. For the purpose of this challenge, a binary tree is considered balanced when the height of both subtrees for every node differs by no more than 1.
 Tip #2: Once you complete this challenge, keep your code around because you’ll need it in the next one.
 
 Sample input and output
 => The following values should create balanced trees:
 • [2, 1, 3]
 • [5, 1, 7, 6, 2, 1, 9]
 • [5, 1, 7, 6, 2, 1, 9, 1]
 • [5, 1, 7, 6, 2, 1, 9, 1, 3]
 • [50, 25, 100, 26, 101, 24, 99]
 • ["k", "t", "d", "a", "z", "m", "f"]
 • [1]
 • [Character]()
 => The following values should not create balanced trees:
 • [1, 2, 3, 4, 5]
 • [10, 5, 4, 3, 2, 1, 11, 12, 13, 14, 15]
 • ["f", "d", "c", "e", "a", "b"]
 */

import Foundation

//Node implementation
internal class Node<T> {
  var key: T
  var left: Node<T>?
  var right: Node<T>?
  
  init(key: T) {
    self.key = key
  }
}

//Traverse Node
extension Node {
  func traverseInOrder(_ root: (Node<T>) -> Void) -> Void {
    left?.traverseInOrder(root)
    root(self)
    right?.traverseInOrder(root)
  }
  
  func traversePostOrder(_ root: (Node<T>) -> Void) -> Void {
    left?.traversePostOrder(root)
    right?.traversePostOrder(root)
    root(self)
  }
  
  func traversePreOrder(_ root: (Node<T>) -> Void) -> Void {
    root(self)
    left?.traversePreOrder(root)
    right?.traversePreOrder(root)
  }
}

//Create BST with nodes
internal class BinarySearchTree<T: Comparable> {
  var root: Node<T>?
  init(arr: [T]) {
    for item in arr {
      var placed: Bool = false
      if let rootNode = root {
        var tracker = rootNode
        while placed == false {
          if item <= tracker.key {
            if tracker.left == nil {
              tracker.left = Node(key: item)
              placed = true
              
            }
            tracker = tracker.left!
          } else {
            if tracker.right == nil {
              tracker.right = Node(key: item)
              placed = true
            }
            tracker = tracker.right!
          }
        }
      } else {
        root = Node(key: item)
      }
    }
  }
}

//print output
extension BinarySearchTree: CustomStringConvertible {
  var description: String {
    guard let first = root else { return "(Empty)" }
    var queue = [Node<T>]()
    queue.append(first)
    var output = ""
    while queue.count > 0 {
      var nodesAtCurrLevel = queue.count
      while nodesAtCurrLevel > 0 {
        let node = queue.removeFirst()
        output += " \(node.key) "
        if node.left != nil { queue.append(node.left!) }
        if node.right != nil { queue.append(node.right!) }
        nodesAtCurrLevel -= 1
      }
      output += "\n"
    }
    return output
  }
}

//check the bst is balanced tree
extension BinarySearchTree {
  func isBalanced() -> Bool {
    func minDepth(from node: Node<T>?) -> Int {
      guard let node = node else { return 0 }
      let returnValue = 1 + min(minDepth(from: node.left), minDepth(from: node.right))
      print("Got min depth \(returnValue) for \(node.key)")
      return returnValue
    }
    func maxDepth(from node: Node<T>?) -> Int {
      guard let node = node else { return 0 }
      let returnValue = 1 + max(maxDepth(from: node.left), maxDepth(from: node.right))
      print("Got max depth \(returnValue) for \(node.key)")
      return returnValue
    }
    guard let root = root else { return true }
    let difference = maxDepth(from: root) - minDepth(from: root)
    return difference <= 1
  }
}

func testBalancedTree() {
  let data1 = [5, 1, 7, 6, 2, 1, 9]
  let bst1 = BinarySearchTree(arr: data1)
  print("TREE:\n")
  print(bst1.description)
  print("is balanced: \(bst1.isBalanced())")
  
  let data2 = [10, 5, 4, 3, 2, 1, 11, 12, 13, 14, 15]
  let bst2 = BinarySearchTree(arr: data2)

  print("TREE:\n")
  print(bst2.description)
  print("is balanced: \(bst2.isBalanced())")
}
