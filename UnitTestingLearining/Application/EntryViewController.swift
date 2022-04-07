//
//  EntryViewController.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/7.
//

import UIKit

class EntryViewController: UIViewController {

    var coordinator: PolicyListCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func toPolicyList(_ sender: Any) {
        
        coordinator = PolicyListCoordinator(rootViewController: self)
        
        coordinator.start()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
