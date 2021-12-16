//
//  MinAndMax.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 16/12/21.
//

import Foundation
class MinMaxElement{
    func minMaxElement(array: [Int]) -> (Int, Int) {
        var min = Int.max
        var max = Int.min
        array.forEach { element in
            if element < min { min = element}
            if element > max { max = element}
        }
        return (min, max)
        
    }
}
