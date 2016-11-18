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
    
    let manager = Manager()
    
    
    func testLogin(){
        XCTAssertTrue ( manager.login( num: 100, password: "1234"), "Error no login")
        XCTAssertFalse( manager.login( num: 120, password: "qwert"), "error login")
    }
    
    func testGetAccount(){
        let manager = Manager()
        
        XCTAssertNotNil(manager.getAccount(num: 100), "this account exist!")
        XCTAssertNil(manager.getAccount(num: 1), "this account dont exist!")
        
    }
    
    func testDepositar(){
        let manager = Manager()
        let value = 100.0
        let account = Account(num: 1, password: "", saldo: 100)
        
        manager.depositar(value: Float(value), account: account)
        
        XCTAssertEqual(200, account.saldo)
    }
    
    func testHasEnoughCash(){
        let account = Account(num: 1, password: "", saldo: 210)
        
        XCTAssertTrue ( account.hasEnoughCash(value: 210) )
        XCTAssertFalse( account.hasEnoughCash(value: 211) )
    }
    
    func testCashOut(){
        let account = Account(num: 1, password: "", saldo: 150)
        manager.cashOut(value: 50, account: account)
        
        XCTAssertEqual(150 - 50, account.saldo)
    }
    
    
    
    
}
