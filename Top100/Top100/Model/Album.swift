//
//  Album.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import Foundation

protocol Album {
    var name: String { get set }
    var artist: String { get set }
    var artworkUrl: String { get set }
}
