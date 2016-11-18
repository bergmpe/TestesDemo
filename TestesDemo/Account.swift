//
//  Account.swift
//  TestesDemo
//
//  Created by padrao on 18/11/16.
//  Copyright © 2016 padrao. All rights reserved.
//

import UIKit

class Account: Equatable {
    
    var num : Int
    var password : String
    var saldo: Float
    
    init(num : Int, password : String, saldo: Float) {
        self.num = num
        self.password = password
        self.saldo = saldo
    }
    
    func hasEnoughCash(value: Float) -> Bool{
        return self.saldo >= value
    }
    
    
    static func ==(lhs: Account, rhs: Account) -> Bool {
        return lhs.num == rhs.num
    }
}
