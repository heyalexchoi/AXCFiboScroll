//
//  AXCFibo.swift
//  AXCFiboScroll
//
//  Created by alexchoi on 10/16/14.
//  Copyright (c) 2014 Alex Choi. All rights reserved.
//

import UIKit

public class AXCFibo: NSObject {
    var numbers = [UInt64(0),UInt64(1)];
    public func getFiboForIndex(index: Int) -> UInt64? {
        while index >= numbers.count {
            let lastIndex = numbers.count - 1
            let indexBeforeLast = numbers.count - 2
            let lastNumber = numbers[lastIndex]
            let numberBeforeLast = numbers[indexBeforeLast]
            if (lastNumber > UInt64.max - numberBeforeLast) {
                println("requested fibonacci number for index too large for UInt64")
                return nil;
            } else {
                numbers.append(lastNumber + numberBeforeLast)
            }
        }
        return numbers[index]
    }
}

