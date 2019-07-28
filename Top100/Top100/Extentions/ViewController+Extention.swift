//
//  ViewController+Extention.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showNoActionAlert(titleStr:String, messageStr:String, style: UIAlertAction.Style) {
        let alert = UIAlertController(title: titleStr, message: messageStr, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
