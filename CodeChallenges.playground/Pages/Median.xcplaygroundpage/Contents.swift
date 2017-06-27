// Heap
/*
 Heap structure in form of array ==>
 
 parent = (index-2)/2
 left = index*2 + 1
 right = index*2 + 2
 
 */

import Foundation

let n = Int(readLine(strippingNewline: true)!)!

var arr:[Int] = []

func printMedian() {
    var median = 0.0
    let count = arr.count
    if count % 2 == 0 {
        let m = Int(count/2)
        median = Double(arr[m] + arr[m - 1]) / 2.0
    }
    else {
        median = Double(arr[Int(arr.count/2)])
    }
    print("\(median)")
}

// heaps method
func hasLeftChild(index: Int) -> Bool {
    return getLeftChildIndex(parentIndex: index) < arr.count
}

func hasRightChild(index: Int) -> Bool {
    return getRightChildIndex(parentIndex: index) < arr.count
}

func hasParent(index: Int) -> Bool {
    return getParentIndex(childIndex: index) >= 0
}

func getLeftChildIndex(parentIndex: Int) -> Int {
    return 2 * parentIndex + 1
}

func getRightChildIndex(parentIndex: Int) -> Int {
    return 2 * parentIndex + 2
}

func getParentIndex(childIndex: Int) -> Int{
    return (childIndex - 1) / 2
}

func leftChild(index: Int) -> Int {
    return arr[getLeftChildIndex(parentIndex: index)]
}

func rightChild(index: Int) -> Int {
    return arr[getRightChildIndex(parentIndex: index)]
}

func parent(index: Int) -> Int {
    return arr[getParentIndex(childIndex: index)]
}

func swapElement(indexOne: Int, indexTwo: Int) {
    let temp = arr[indexOne]
    arr[indexOne] = arr[indexTwo]
    arr[indexTwo] = temp
}

func insertElement(element: Int) {
    arr.append(element)
    heapifyUp()
}

func heapifyUp() {
    var index = arr.count - 1
    while hasParent(index: index) && parent(index: index) > arr[index] {
        swapElement(indexOne: getParentIndex(childIndex: index), indexTwo: index)
        index = getParentIndex(childIndex: index)
    }
}

for i in 0..<n {
    let number = Int(readLine(strippingNewline: true)!)!
    insertElement(element: number)
//    arr.append(number)
//    arr.sort()
    printMedian()
}

