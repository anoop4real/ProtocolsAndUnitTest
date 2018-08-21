//
//  NetworkEngine.swift
//  ProtocolsAndUnitTesting
//
//  Created by anoop mohanan on 09/03/18.
//  Copyright © 2018 com.anoopm. All rights reserved.
//

import Foundation

class NetworkEngine: NetworkEngineProtocol{

    
    // Create a session
    lazy var session: URLSession = {
        
        let config = URLSessionConfiguration.default
        config.urlCache = nil
        
        return URLSession(configuration: config)
    }()
    
    func fetchDataWithUrlRequest(_ urlRequest: URLRequest, completion: @escaping (Result<Data?, Error>) -> Void) {
        let task = session.dataTask(with: urlRequest, completionHandler: { (data, response, error) -> Void in
            if error != nil {
                print(error!.localizedDescription)
                completion(.error(error!))
            } else {
                completion(.success(data))
            }
        })
        task.resume()
    }
    
    
}
