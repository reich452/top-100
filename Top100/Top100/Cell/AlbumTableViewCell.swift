//
//  AlbumTableViewCell.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import Foundation
import UIKit

class AlbumTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    var album: Album? {
        didSet {
            nameLabel.text = album?.name
            artistLabel.text = album?.artist
        }
    }
    var artworkPath: String? {
        didSet {
            guard let album = album else { return }
            artworkImageView.loadImage(imagePath: album.artworkUrl)
        }
    }
    
    // MARK: - Private
    
    let artworkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textColor = UIColor.semiboldWhite
        label.numberOfLines = 0
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.6
        return label
    }()
    
    private let artistLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .thin)
        label.textColor = UIColor.thinWhite
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    // MARK: - Initailzer

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        addSubview(artworkImageView)
        addSubview(nameLabel)
        addSubview(artistLabel)
        
        artworkImageView.anchor(top: topAnchor, paddingTop: 20, bottom: bottomAnchor, paddingBottom: 20, left: leftAnchor, paddingLeft: 12, right: nil, paddingRight: 0, width: 150, height: 150)
        
        let stackView = UIStackView(arrangedSubviews: [nameLabel, artistLabel])
        stackView.axis = .vertical
        stackView.spacing = 7
        addSubview(stackView)

        stackView.anchorWith(top: artworkImageView.topAnchor, paddingTop: 32, bottom: nil, paddingBottom: 0, left: artworkImageView.rightAnchor, paddingLeft: 15, right: rightAnchor, paddingRight: 15, width: 0, greaterHeight: 55)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
