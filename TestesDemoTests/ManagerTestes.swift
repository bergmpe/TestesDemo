//
//  ManagerTestes.swift
//  TestesDemo
//
//  Created by padrao on 18/11/16.
//  Copyright © 2016 padrao. All rights reserved.
//

import XCTest

@testable import TestesDemo

class ManagerTestes: XCTestCase {
    
    func testLogin(){
        let manager = Manager()
        let account = Account(num: 100, password: "1234")
        
        XCTAssertTrue( manager.login( anAccount: account), "Error no login")
        XCTAssertFalse(manager.login(anAccount: Account(num: 120, password: "qwert")), "error login")
    }
    

}
