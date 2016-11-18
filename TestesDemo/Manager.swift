//
//  Manager.swift
//  TestesDemo
//
//  Created by padrao on 17/11/16.
//  Copyright © 2016 padrao. All rights reserved.
//

import UIKit

class Manager: NSObject {
    
    var json = [Any]()
    
    var accounts: [Account]{
        guard let path = Bundle(for: type(of: self)).path(forResource: "accounts", ofType: "json")
            else { fatalError("Can't find Account JSON resource.") }
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let json = try! JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! [[String : Any]]
        
        let accounts = json.map { (object) -> Account in
            let num      = object["num"] as! Int
            let password = object["password"] as! String
            let saldo = object["saldo"] as! Float
            
            return Account(num: num, password: password, saldo: saldo)
        }
        
        return accounts
    }
    
    func login(num: Int, password: String) -> Bool{
        for account in accounts{
            if num == account.num && password  == account.password{
                return true
            }
        }
        return false
    }
    
    func getAccount(num: Int) -> Account?{
        for account in accounts{
            if account.num == num{
                return account
            }
        }
        return nil
    }
    
    func depositar(value: Float, account: Account){
        account.saldo += value
    }
    

    func cashOut(value: Float, account: Account) -> Bool{
        
        if account.hasEnoughCash(value: value){
            account.saldo -= value
            return true
        }
        else{
            return false
        }
    }
    
    
    func asynchronousURLConnection() {
        let url = URL(string: "http://nshipster.com/")!
        
        let session = URLSession.shared
        let task = session.dataTask(with: url)
        
        task.resume()
    }
    
    
}
