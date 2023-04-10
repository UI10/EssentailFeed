//
//  SharedTestHelpers.swift
//  EssentailFeedTests
//
//  Created by kashif on 4/6/23.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://a-url.com")!
}

func anyNSError() -> NSError { NSError(domain: "any error", code: 0) }
