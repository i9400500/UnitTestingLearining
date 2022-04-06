//
//  PolicyListUseCase.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/6.
//

import Foundation
public protocol PolicyListUseCase{
    func retrievePolicyListData(with completion: @escaping ()->Void)
}

public class PolicyListMainUseCase: PolicyListUseCase{
    
    private let repository: PolicyListRepository
    
    public init(repository: PolicyListRepository){
        self.repository = repository
    }
    
    public func retrievePolicyListData(with completion: @escaping () -> Void) {
        
    }
}
