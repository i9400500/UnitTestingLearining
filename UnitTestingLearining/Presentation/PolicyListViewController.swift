//
//  PolicyListViewController.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/6.
//

import UIKit

public class PolicyListViewController: UIViewController {

    deinit{
//        print("PolicyListViewController deinit")
    }
    
    public var viewModel: PolicyListViewModel
    
    public init(viewModel: PolicyListViewModel){
        self.viewModel = viewModel
        
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func goBackAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
