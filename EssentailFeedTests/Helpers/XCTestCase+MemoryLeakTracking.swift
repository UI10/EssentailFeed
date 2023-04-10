//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentailFeedTests
//
//  Created by kashif on 3/14/23.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been dealloctedd. Potential memoy leak.", file: file, line: line)
        }
    }
}
