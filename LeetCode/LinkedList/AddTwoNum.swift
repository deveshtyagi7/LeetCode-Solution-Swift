//
//  AddTwoNum.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 14/12/21.
//

import Foundation


// * Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
private class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return addTwoNumbers(l1,l2, 0)
    }
    
     func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?, _ remain: Int) -> ListNode? {
        if l1 == nil && l2 == nil && remain == 0 { return nil }

        let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + remain
        let val = sum % 10
        let remain = Int(sum / 10)
        return ListNode(val, addTwoNumbers(l1?.next, l2?.next, remain))
     }
}
