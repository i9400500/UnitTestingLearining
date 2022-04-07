//
//  PolicyListMainRepository.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/6.
//

import Foundation
public struct PolicyListMainRepository: PolicyListRepository{
    
    private let loader = NetworkLoader()
    
    public func retrievePolicyListData(with completion: @escaping (Result<PolicyListEntity, Error>) -> Void) {
        let endpoint = Endpoint<PolicyListDTO>()
        
        loader.load(endpoint: endpoint) { result in
            
        }
    }
    
    
}
