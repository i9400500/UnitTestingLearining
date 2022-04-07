//
//  PolicyListRepository.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/6.
//

import Foundation

public protocol PolicyListRepository{
    func retrievePolicyListData(with completion: @escaping (Result<PolicyListEntity, Error>) -> Void)
}
