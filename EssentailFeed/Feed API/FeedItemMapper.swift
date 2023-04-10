//
//  FeedItemMapper.swift
//  EssentailFeed
//
//  Created by kashif on 3/12/23.
//

import Foundation

final  class FeedItemMapper {
    private struct Root: Decodable {
        var items: [RemoteFeedItem]
    }
    
    static var OK_200: Int { return 200 }
    
    static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == OK_200,
              let root = try?  JSONDecoder().decode(Root.self, from: data) else {
              throw RemoteFeedLoader.Error.invalidData
        }
        
        return root.items
    }
}
