//
//  AXCFiboScrollTests.swift
//  AXCFiboScrollTests
//
//  Created by alexchoi on 10/16/14.
//  Copyright (c) 2014 Alex Choi. All rights reserved.
//

import UIKit
import XCTest
import AXCFiboScroll



class AXCFiboScrollTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func fiboTest() {

        var fibo : AXCFibo = AXCFibo();
        
        XCTAssert(fibo.getFiboForIndex(0) == 0)
        XCTAssert(fibo.getFiboForIndex(1) == 1)
        XCTAssert(fibo.getFiboForIndex(2) == 1)
        XCTAssert(fibo.getFiboForIndex(3) == 2)
        XCTAssert(fibo.getFiboForIndex(4) == 3)
        XCTAssert(fibo.getFiboForIndex(5) == 5)
        
        XCTAssert(fibo.getFiboForIndex(100) == nil)
        XCTAssert(fibo.getFiboForIndex(1000) == nil)
        XCTAssert(fibo.getFiboForIndex(93) == 12200160415121876738)
        
    }
}
