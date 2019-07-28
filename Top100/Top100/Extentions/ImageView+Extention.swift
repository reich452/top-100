//
//  ImageView+Extention.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImage(imagePath: String) {
        
        
        guard let url = URL(string: imagePath) else {
            print("Indvalid URL")
            return
        }

        NetworkManager.performRequest(for: url, httpMethod: .get, body: nil) { (data, error) in
            if let err = error {
                print("Error getting image data: \(err.localizedDescription) \(#file) : \(#function)"); return
            }
            
            guard let data = data else { print("No From image"); return }
            
            guard let image = UIImage(data: data) else {
                print("Couldn't Find an image")
                return
            }
            
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}

