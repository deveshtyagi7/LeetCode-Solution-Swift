//
//  Palindrome Number.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 15/12/21.
//

import Foundation
class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
               return x < 0 ? false : x == Int(String(String(abs(x)).reversed()))!

    
        
    }
}
