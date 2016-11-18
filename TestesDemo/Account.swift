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
    
    init(num : Int, password : String) {
        self.num = num
        self.password = password
    }
    
    
    static func ==(lhs: Account, rhs: Account) -> Bool {
        return lhs.num == rhs.num
    }
}
