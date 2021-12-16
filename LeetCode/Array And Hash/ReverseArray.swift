//
//  ReverseArray.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 16/12/21.
//

import Foundation
class ReverseArray{
    
  
    func reverseArray<T>(array: [T]) -> [T]{
        var reverse = [T]()
        for i in (0 ... array.count - 1).reversed(){
            reverse.append(array[i])
        }
        
        return reverse
        
    }
}
