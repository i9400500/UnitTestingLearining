//
//  NetworkLoader.swift
//  UnitTestingLearining
//
//  Created by 00767160 on 2022/4/7.
//

import Foundation

public enum DataLoaderResult<T> {
    case success(T)
    case failure(Error)
}

public struct NetworkLoader{
    public typealias CompletionHanlder<T> = (DataLoaderResult<T>) -> Void
   
    public func load<T, E: Responseable>(endpoint: E, completion :@escaping CompletionHanlder<T>) where E.Response == T {
        
    }
}
