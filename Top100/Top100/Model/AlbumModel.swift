//
//  AlbumModel.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import Foundation

struct AlbumJson: Decodable {
    
    let feed: FeedJson
    
    struct FeedJson: Decodable {
        
        let results: [AlbumModel]
        
    }
}
struct AlbumModel: Decodable, Album {
    
    var name: String
    var artist: String
    var artworkUrl: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case artist = "artistName"
        case artworkUrl = "artworkUrl100"
    }
}

