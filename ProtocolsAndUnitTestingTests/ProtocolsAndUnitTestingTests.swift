//
//  ProtocolsAndUnitTestingTests.swift
//  ProtocolsAndUnitTestingTests
//
//  Created by anoop mohanan on 20/08/18.
//  Copyright © 2018 com.anoopm. All rights reserved.
//

import XCTest
@testable import ProtocolsAndUnitTesting

class ProtocolsAndUnitTestingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let session = MockURLSession()
        let mockEngine = MockNetworkEngine(session: session)
        let ds = DataStore(networkManager: mockEngine)
        
        ds.fetchAlbums { (results) in
            
        }
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
