//
//  PolicyListViewModel.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/6.
//

import Foundation

//input
public protocol PolicyListViewInput {
    
    //refresh
    var loadItemsFeedsTrigger: Box<Void>{get}
    
}
// Output
public protocol PolicyListViewOutput {
    var dataItems: Box<[PolicyListCellViewModel]>{get}
    
}
/// Manager
public protocol PolicyListViewManager {
    /// Input
    var input: PolicyListViewInput { get }
    /// Output
    var output: PolicyListViewOutput { get }
}

public class PolicyListViewModel:PolicyListViewManager, PolicyListViewInput, PolicyListViewOutput{
    
    deinit{
//        print("PolicyListViewModel deinit")
    }
    
    public var loadItemsFeedsTrigger: Box<Void> = Box(nil)
    
    public var dataItems: Box<[PolicyListCellViewModel]> = Box([])
    
    
    public var input: PolicyListViewInput{
        return self
    }
    
    public var output: PolicyListViewOutput{
        return self
    }
        
    
    private var dependency: PolicyListUseCase
    
    public init(dependency: PolicyListUseCase){
        self.dependency = dependency
        
        self.initializeActions()
    }
    
}

extension PolicyListViewModel{
    private func initializeActions(){
        loadItemsFeedsTrigger.binding { newValue, oldValue in
            self.dependency.retrievePolicyListData { result in
                switch result{
                case .success(let _):
                    self.dataItems.value = [PolicyListCellViewModel()]
                case .failure(_):
                    break
                }
            }
        }
    }
}
