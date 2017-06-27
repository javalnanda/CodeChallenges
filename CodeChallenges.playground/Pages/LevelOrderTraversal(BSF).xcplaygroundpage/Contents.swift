/*
==== Task ====
 A level-order traversal, also known as a breadth-first search, visits each level of a tree's nodes from left to right, top to bottom. You are given a pointer, , pointing to the root of a binary search tree. Complete the levelOrder function provided in your editor so that it prints the level-order traversal of the binary search tree.
 

 */
import Foundation

// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    
    var queue:[Node] = [Node]()
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }

    
    func levelOrder(root: Node?)  {
        // Complete the function
        if root != nil {
            // enqueue current root
            queue.append(root!)
            
            // while there are nodes to process
            while queue.count > 0 {
                let tree = queue.popLast()
                
                //process root of tree
                print("\(tree!.data)", terminator:" ")
                
                if tree?.left != nil {
                    queue.insert(tree!.left!, at: 0)
                }
                if tree?.right != nil {
                    queue.insert(tree!.right!, at: 0)
                }
            }
        }
    } // End of levelOrder function
} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)

