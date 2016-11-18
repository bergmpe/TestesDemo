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
            
            return Account(num: num, password: password)
        }
        
        return accounts
    }
    
    func login(anAccount: Account) -> Bool{
        for account in accounts{
            if account.num == anAccount.num && account.password == anAccount.password{
                return true
            }
        }
        return false
    }
    
    
    func asynchronousURLConnection() {
        let url = URL(string: "http://nshipster.com/")!
        
        let session = URLSession.shared
        let task = session.dataTask(with: url)
        
        task.resume()
    }
    
    
}
