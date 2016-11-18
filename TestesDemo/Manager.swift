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
            else { fatalError("Can't find Pokemon JSON resource.") }
        
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let json = try! JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! [[String : Any]]
        
        let accounts = json.map { (object) -> Account in
            let num      = object["num"] as! Int
            let password = object["password"] as! String
            
            return Account(num: num, password: password)
        }
        
        return accounts
    }
    
    func getJson(){
        print(accounts[0].num)
    }
    
    
    func asynchronousURLConnection() {
        let url = URL(string: "http://nshipster.com/")!
        
        
        let session = URLSession.shared
        let task = session.dataTask(with: url)
        
        task.resume()
    }
    
    
}
