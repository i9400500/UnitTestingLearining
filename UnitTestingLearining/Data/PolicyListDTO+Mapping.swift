//
//  PolicyListDTO+Mapping.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/6.
//

import Foundation
public struct PolicyListDTO: Decodable{
    public var policy_no: String
    public var policy_name: String
    public var policy_time: Date
}

extension PolicyListDTO{
    public func toDomain()->PolicyListEntity{
        return PolicyListEntity(policy_no: policy_no, policy_name: policy_name, policy_time: policy_time)
    }
}
