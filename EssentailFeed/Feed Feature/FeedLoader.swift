//
//  FeedLoader.swift
//  EssentailFeed
//
//  Created by apple on 2/25/23.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
