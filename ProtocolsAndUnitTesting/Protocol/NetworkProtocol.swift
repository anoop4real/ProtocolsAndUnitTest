//
//  NetworkProtocol.swift
//  ProtocolsAndUnitTesting
//
//  Created by anoop mohanan on 09/03/18.
//  Copyright © 2018 com.anoopm. All rights reserved.
//

import Foundation

enum Result<T, Error> {
    case success(T)
    case error(Error)
}

protocol NetworkSessionProtocol {
    
    typealias Completion = (Result<Any, Error>) -> ()
    
    // Method to fetch data from URL
    func fetchDataWithUrlRequest(_ urlRequest: URLRequest, completion:@escaping (Result<Data?, Error>) -> Void)
}

protocol NetworkEngineProtocol {
    
    typealias Completion = (Result<Any, Error>) -> ()
    
    // Method to fetch data from URL
    func fetchDataWithUrlRequest(_ urlRequest: URLRequest, completion:@escaping (Result<Data?, Error>) -> Void)
}
