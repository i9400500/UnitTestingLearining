//
//  Endpoint.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/7.
//

import Foundation

public protocol Responseable {
    associatedtype Response: Decodable
}

public struct Endpoint<T: Decodable>: Responseable{
    public typealias Response = T
}
