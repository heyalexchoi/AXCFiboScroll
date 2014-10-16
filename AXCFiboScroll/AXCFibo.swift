//
//  AXCFibo.swift
//  AXCFiboScroll
//
//  Created by alexchoi on 10/16/14.
//  Copyright (c) 2014 Alex Choi. All rights reserved.
//

import UIKit

class AXCFibo: NSObject {
    // fiboNumbers is an array of UInt64s, following the fibonacci series
    var fiboNumbers = [UInt64(1),UInt64(1)];
    // fiboForIndex uses fiboNumbers to return the fibonacci number for the given index, and uses fiboGenerator to generate new numbers if needed
    func fiboForIndex(index: Int) -> UInt64 {
        fiboGenerator(index);
        return UInt64(fiboNumbers[index]);
    }
    // fiboGenerator lazily and recursively adds new elements to fiboNumbers
    func fiboGenerator(index: Int) {
        if (index >= fiboNumbers.count) {
            let newElement = UInt64(fiboNumbers[index - 2] + fiboNumbers[index - 1]);
            fiboNumbers.append(newElement);
            fiboGenerator(index);
        }
    }
}