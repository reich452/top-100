//
//  AlbumListTableViewController.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import UIKit

class AlbumListTableViewController: UITableViewController {
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(AlbumTableViewCell.self, forCellReuseIdentifier: "albumCellId")
        setUpUi()
    }
    var albums = [
        AlbumModel(name: "The Search", artits: "NF", artWorkUrl: ""),
        AlbumModel(name: "Hadestown (Original Brodway Cast)", artits: "Anais Mitchel", artWorkUrl: ""),
        AlbumModel(name: "Late Niights and Longnetcks", artits: "Justin More", artWorkUrl: ""),
        AlbumModel(name: "One Light Town", artits: "Casey Donahew", artWorkUrl: ""),
        AlbumModel(name: "Blink-182", artits: "Tom Delong", artWorkUrl: "")
    ]
    
    // MARK: - UI
    
    func setUpUi() {
        view.backgroundColor = .mainColor
        title = "Top 100"
        tableView.separatorStyle = .none
        
    }
    
}

extension AlbumListTableViewController {
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return albums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "albumCellId", for: indexPath) as? AlbumTableViewCell else { return UITableViewCell() }
       
        let album = albums[indexPath.row]
        cell.cellImage = #imageLiteral(resourceName: "xceImagePlaceholder")
        cell.album = album
        
        return cell
    }
    
}
