//
//  RetainCycleExample.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 14/12/21.
//

import UIKit
class Person {
    var name: String
    var age: Int
    var phone: Phone?
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    deinit{
        print("Deinit Called in Person Class")
    }
    
}


class Phone {
    var brandName: String
    var modelName: String
    weak var assignTo: Person?
    
    init(brandName: String, modelName: String){
        self.brandName = brandName
        self.modelName = modelName
    }
    deinit{
        print("Deinit Called in Phone class")
    }
}


class RetainCycleExample : UIViewController  {
    
    func retainCycleExample() {
        var jack: Person?  = Person(name: "Jackl", age: 20)
        var iPhone: Phone? = Phone(brandName: "Apple", modelName: "iPhone7")
        
       
            jack?.phone = iPhone
            iPhone?.assignTo = jack
            jack = nil
            iPhone = nil
    }
    
}

