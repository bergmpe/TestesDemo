//
//  ViewController.swift
//  TestesDemo
//
//  Created by padrao on 17/11/16.
//  Copyright © 2016 padrao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numeroContaTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: UIButton) {
        
        self.show(<#T##vc: UIViewController##UIViewController#>, sender: <#T##Any?#>)
    }
    
    

}

