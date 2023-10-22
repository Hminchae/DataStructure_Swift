//
//  main.swift
//  queue
//
//  Created by 황민채 on 10/22/23.
//

import Foundation

//큐는 대기줄
//뒤로 들어와서 앞으로 빠진다
//저장 프로퍼티는 count 와 isEmpty


struct Queue<T> {
    var elements: [T] = []
    var count: Int {
        return elements.count
    }
    var isEmpty: Bool {
        return elements.isEmpty
    }
    //메서드
    mutating func enqueue(_ element: T)  {
        elements.append(element)
    }
    mutating func dequeue() -> T? {
        !elements.isEmpty ? elements.removeFirst() : nil
    }
}

var queue = Queue<String>()
queue.enqueue("황민채")
print(queue.elements)
queue.dequeue()
print(queue.isEmpty)

