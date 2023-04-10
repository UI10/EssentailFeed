//
//  RemoteFeedItem.swift
//  EssentailFeed
//
//  Created by kashif on 3/29/23.
//

import Foundation

struct RemoteFeedItem: Decodable  {
    let id: UUID
    let description: String?
    let location: String?
    let image : URL
}
