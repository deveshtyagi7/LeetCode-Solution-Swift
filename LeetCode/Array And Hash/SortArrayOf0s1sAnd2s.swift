//
//  SortArrayOf0s1sAnd2s.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 21/12/21.
//

import Foundation

class SortArrayOf0s1sAnd2s{
    
    func sort(arr: [Int]) -> [Int]{
        var newArray = arr
        var low = 0
        var mid = 0
        var high = arr.count - 1
        
        while(mid < high){
            if newArray[mid] == 0{
                //swap mid with low -> mid ++ low ++
                (newArray[mid] , newArray[low]) = (newArray[low], newArray[mid])
                mid += 1
                low += 1
            }else if newArray[mid] == 1{
                 mid += 1
            }else if newArray[mid] == 2{
                //swap mid with high ->  high--
                (newArray[mid] , newArray[high]) = (newArray[high], newArray[mid])
                high -= 1
                
            }
        }
        return newArray
    }
}


