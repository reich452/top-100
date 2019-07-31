//
//  Album.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import Foundation

protocol Album {
    var name: String { get }
    var artist: String { get }
    var artworkUrl: String { get }
    var copyright: String { get }
    var artistId: String { get }
    var urlLink: URL { get }
    var releaseDate: String { get }
    var genres: [GenreDeictionary] { get }
    var hdArtworkString: String { get }
    var id: String { get }
}
