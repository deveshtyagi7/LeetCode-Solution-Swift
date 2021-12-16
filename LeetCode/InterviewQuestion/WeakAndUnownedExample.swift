//
//  WeakAndUnownedExample.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 14/12/21.
//

import Foundation
import UIKit
class Employee {
    var name: String
    var age: Int
    var idCard: IDCard?
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    deinit{
        print("Deinit Called in Employee Class")
    }
    
}


class IDCard {
    var dept: String
    
    unowned var assignTo: Employee
    
    init(dept: String, assignTo: Employee){
        self.dept = dept
        self.assignTo = assignTo
    }
    deinit{
        print("Deinit Called in Phone class")
    }
}


class WeakAndUnownedExample   {
    
    private func weakAndUnownedExample() {
        var jack: Employee?  = Employee(name: "jack", age: 25)
        var jackID: IDCard? = IDCard(dept: "Developing",assignTo: jack!)
        
        jack?.idCard = jackID
        jack = nil
        jackID = nil
        
    }
   
}

