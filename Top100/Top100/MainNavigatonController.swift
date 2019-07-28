//
//  MainViewController.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUi()
    }
    
    // MARK: - Private 
    
    private func setUpUi() {
       navigationBar.prefersLargeTitles = true
    }

}
