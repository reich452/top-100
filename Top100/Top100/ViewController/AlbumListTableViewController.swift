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
    
    // MARK: - UI
    
    func setUpUi() {
        self.view.backgroundColor = .green
        self.title = "Top 100"
    }

}

extension AlbumListTableViewController {
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "albumCellId", for: indexPath) as? AlbumTableViewCell else { return UITableViewCell() }
        
        cell.textLabel?.text = "Wow"
        
        return cell
    }
    
}
