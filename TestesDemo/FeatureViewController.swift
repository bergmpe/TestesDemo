//
//  FeatureViewController.swift
//  TestesDemo
//
//  Created by padrao on 18/11/16.
//  Copyright © 2016 padrao. All rights reserved.
//

import UIKit

class FeatureViewController: UIViewController {

    var currentAccount: Account?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(currentAccount?.password)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func consultarSaldoAction(_ sender: Any) {
    }
    
    @IBAction func sacarAction(_ sender: UIButton) {
    }
    
    
    @IBAction func depositarAction(_ sender: UIButton) {
    }
    

    @IBAction func verHistoricoAction(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
