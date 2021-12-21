//
//  MoveNegativesOnOneSide.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 21/12/21.
//

import Foundation
class MoveNegativesOnOneSide{
    
    func sort(arr: [Int]) -> [Int]{
        var newArray = arr
        var low = 0
       
        var high = arr.count - 1
        
        while(low < high){
            if newArray[low] < 0 {
                low += 1
            }else if newArray[high] < 0 {
                //Swap high with low
               
                (newArray[low], newArray[high]) = (newArray[high], newArray[low])
                high -= 1
            }else {
                high -= 1
            }
        }
        return newArray
    }
}
