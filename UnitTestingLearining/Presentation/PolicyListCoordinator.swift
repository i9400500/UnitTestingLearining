//
//  PolicyListCoordinator.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/6.
//

import Foundation
import UIKit


public final class PolicyListCoordinator{
    
    public init(rootViewController: UIViewController){
        self.rootViewController = rootViewController
    }
 
    var rootViewController: UIViewController?
    
    public final func start(){
        
        let repository = PolicyListMainRepository()
        
        let usecase = PolicyListMainUseCase(repository: repository)
        
        let viewModel = PolicyListViewModel(dependency: usecase)
        
        let vc = PolicyListViewController(viewModel: viewModel)
        
        rootViewController?.present(vc, animated: true)
    }
    
}
