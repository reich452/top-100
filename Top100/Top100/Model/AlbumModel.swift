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
    var copyright: String
    var artistId: String
    var urlLink: URL
    var releaseDate: String
    var genres: [GenreDeictionary]
    
    var hdArtworkString: String {
        let urlString = artworkUrl
        return urlString.replacingOccurrences(of: "200", with: "1000")
    }
    
    
    enum CodingKeys: String, CodingKey {
        case name
        case artist = "artistName"
        case artworkUrl = "artworkUrl100"
        case copyright
        case artistId
        case urlLink = "url"
        case releaseDate
        case genres
    }
}

struct GenreDeictionary: Decodable {
    let name: String
}
