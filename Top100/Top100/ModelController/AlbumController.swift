//
//  AlbumController.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import Foundation

struct AlbumController {
    
    private let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/itunes-music/top-albums/all/100/explicit")!
    
    typealias AlbumCompletion = ((Result<[Album], Error>) -> Void)
    
    func fetchTopAlbums(completion: @escaping (AlbumCompletion)) {
        let requetUrl = url.appendingPathExtension("json")
        
        NetworkManager.performRequest(for: requetUrl, httpMethod: .get, urlParameters: nil, body: nil) { (data, error) in
            
            if let error = error {
                
            }
        }
    }
}
