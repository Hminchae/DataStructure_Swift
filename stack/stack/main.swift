//
//  main.swift
//  stack
//
//  Created by 황민채 on 10/22/23.
//

import Foundation
/*
 1. push
 2. pop
 3. 갯수 세는거,
 4. count, isEmpty
 */
struct Stack<T> {
    var stack: [T] = []
    
    var count: Int {
        return stack.count // Swift 가 제공하는 연산 프로퍼티 사용
    }
    
    var isEmpty: Bool {
        return stack.isEmpty //Swift 가 제공하는 연산 프로퍼티 사용
    }
    
    mutating func push(_ element: T) { //push
        stack.append(element)
    }
    
    mutating func pop() -> T? { //pop
        return isEmpty ? nil : stack.popLast()
    }
}

//사용 예

var stack: Stack = Stack<Int>()
print(stack.push(10))
print(stack.pop()!)
print(stack.isEmpty)
print(stack.count)
