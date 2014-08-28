//
//  Animal.swift
//  DongVatApp
//
//  Created by thuc on 8/26/14.
//  Copyright (c) 2014 thuc. All rights reserved.
//

import Foundation

class Animal {
    var name : String
    var numberOfFeet: Int
    var whereLive: String
    var info: String
    var lifeCycle: String
    
    init (name: String , numberOfFeet: Int , whereLive: String , info: String , lifeCycle: String){
        self.name = name
        self.numberOfFeet = numberOfFeet
        self.whereLive = whereLive
        self.info = info
        self.lifeCycle = lifeCycle
    }
    
    func returnName() -> String{
        return self.name
    }
    
    func returnNumberOfFeet() -> Int{
        return self.numberOfFeet
    }
    
    func returnWhereLive() -> String {
        return self.whereLive
    }
    
    func returnInfo() -> String {
        return self.info
    }
    
    func returnLifeCycle() -> String {
        return self.lifeCycle
    }
}