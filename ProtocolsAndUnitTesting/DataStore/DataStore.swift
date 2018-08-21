//
//  DataStore.swift
//  ProtocolsAndUnitTesting
//
//  Created by anoop mohanan on 09/03/18.
//  Copyright © 2018 com.anoopm. All rights reserved.
//

import Foundation

class DataStore {
    
    let networkManager:NetworkEngineProtocol!
    
    init(networkManager:NetworkEngineProtocol = NetworkEngine()) {
        
        self.networkManager = networkManager
    }

    func fetchAlbums(completion:@escaping (Result<[Albums], String>) -> Void){
        
        guard let url = createURL() else{
            return
        }

        let request = URLRequest(url: url)
        
        self.networkManager.fetchDataWithUrlRequest(request) { (result) in
            switch (result){
                
            case .success(let response):
                let jsonDecoder = JSONDecoder()
                do {
                    let responseModel = try jsonDecoder.decode([Albums].self, from: response!)
                    print(responseModel)
                    completion(.success(responseModel))
                } catch let error {
                    completion(.error("Unknown error"))
                    print(error.localizedDescription)
                    
                }
            case .error(let error):
                completion(.error("Unknown error"))
                print(error.localizedDescription)
                
            }
        }
    }
    
    private func createURL() -> URL? {
        
        var components = URLComponents()
        components.scheme = Constants.APIDetails.APIScheme
        components.host   = Constants.APIDetails.APIHost
        components.path   = Constants.APIDetails.APIPath
        
        return components.url
    }
}
