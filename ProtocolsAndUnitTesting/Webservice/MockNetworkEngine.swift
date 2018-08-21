//
//  MockNetworkEngine.swift
//  ProtocolsAndUnitTesting
//
//  Created by anoop mohanan on 20/08/18.
//  Copyright © 2018 com.anoopm. All rights reserved.
//

import Foundation

class MockNetworkEngine: NetworkEngineProtocol{
    
    private let session: NetworkSessionProtocol
    
    init(session: NetworkSessionProtocol = URLSession.shared) {
        self.session = session
    }
    func fetchDataWithUrlRequest(_ urlRequest: URLRequest, completion: @escaping (Result<Data?, Error>) -> Void) {
        
        session.fetchDataWithUrlRequest(urlRequest) { (result) in
            completion(result)
        }
    }
    
    
}

