//
//  NonRepeatingElement.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 15/12/21.
//

import Foundation
class NonRepeatingElement {
    func NonRepeatingElement() {
        let elements = [1,2,3,4,2,3,4,5,6,7]
        
        var frequencyStorage: [Int: Int] = [Int: Int]()
        
        for element in elements{
            
            frequencyStorage[element] = frequencyStorage[element] != nil ?  frequencyStorage[element]! + 1 : 1
        }
        
        frequencyStorage.forEach { (element , freq) in
            if freq == 1{
                print(element)
            }
        }
    }
    
    
}
