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
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var account: Account?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //account = Account(num: 120, password: "eita")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: UIButton) {
        
        if let numConta = Int(numeroContaTextField.text!), let senha = senhaTextField.text{
            account = Account(num: numConta, password: senha)
            if appDelegate.bankManager.login(anAccount: account!){
                self.performSegue(withIdentifier: "features", sender: sender)
            }
            else{
                print("conta ou senha invalida")
            }
        }
        else{
            print("valores invalidos")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "features"{
            if let destinationVC = segue.destination as? FeatureViewController{
                destinationVC.currentAccount = account
            }
        }
    }
    
    

}

