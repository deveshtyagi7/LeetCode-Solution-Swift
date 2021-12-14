//
//  TwoSum.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 14/12/21.
//

import Foundation
private class Solution {
    
    func twoSumUsingDict(_ nums: [Int], _ target: Int) -> [Int] {
            var storage : [Int : Int] = [Int : Int]()
            for (index , num) in nums.enumerated(){
                if let indexOfRequiredNumber = storage[target - num]{
                    return [index , indexOfRequiredNumber]
                }else {
                    storage[num] = index
                }
                
            }
            return []
        }
    func twoSumUsingArray(_ nums: [Int], _ target: Int) -> [Int] {
        let arr = nums.sorted()
        var i = 0, j = nums.count - 1
        repeat {
            if arr[i] + arr[j] == target {
                return [nums.firstIndex(of: arr[i])!, nums.lastIndex(of: arr[j])!]
            } else if arr[i] + arr[j] < target {
                i += 1
            } else {
                j -= 1
            }
        } while i < j
        return []
    }
}
