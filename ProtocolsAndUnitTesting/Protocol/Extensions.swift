//
//  Extensions.swift
//  ProtocolsAndUnitTesting
//
//  Created by anoop mohanan on 20/08/18.
//  Copyright © 2018 com.anoopm. All rights reserved.
//

import Foundation

extension URLSession: NetworkSessionProtocol{
    
    func fetchDataWithUrlRequest(_ urlRequest: URLRequest, completion: @escaping (Result<Data?, Error>) -> Void) {
        
        let task = self.dataTask(with: urlRequest, completionHandler: { (data, response, error) -> Void in
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
