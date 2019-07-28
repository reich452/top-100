//
//  AlbumListTableViewController.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import UIKit

class AlbumListTableViewController: UITableViewController {
    
    // MARK: - Properties
    let albumController: AlbumController
    fileprivate var albums = [Album]()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(AlbumTableViewCell.self, forCellReuseIdentifier: Constant.albumCellId)
        setUpUi()
        fetchAlbums()
    }
    
    
    // MARK: - UI
    
    func setUpUi() {
        view.backgroundColor = .mainColor
        title = "Top 100"
        tableView.separatorStyle = .none
    }
    
    func fetchAlbums() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        albumController.fetchTopAlbums { [weak self] (result) in
            guard let self = self else { return }
            switch result {
            case .success(let albums):
                self.albums = albums
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                      UIApplication.shared.isNetworkActivityIndicatorVisible = false
                }
                
            case .failure(let error):
                DispatchQueue.main.async {
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                    self.showNoActionAlert(titleStr: "Error Displaying Albums", messageStr: error.localizedDescription, style: .cancel)
                }
            }
        }
    }
    
    // MARK: - Init
    
    init(albumController: AlbumController) {
        self.albumController = albumController
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AlbumListTableViewController {
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return albums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constant.albumCellId, for: indexPath) as? AlbumTableViewCell else { return UITableViewCell() }
        
        let album = albums[indexPath.row]
        cell.album = album
        
        return cell
    }
    
}
