//
//  ViewExtentionProtocol.swift
//  Top100
//
//  Created by Nick Reichard on 7/27/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import UIKit

protocol ViewExtensionProtocol {
    
    func anchor(top: NSLayoutYAxisAnchor?,
                paddingTop: CGFloat,
                bottom: NSLayoutYAxisAnchor?,
                paddingBottom: CGFloat,
                left: NSLayoutXAxisAnchor?,
                paddingLeft: CGFloat,
                right: NSLayoutXAxisAnchor?,
                paddingRight: CGFloat,
                width: CGFloat,
                height: CGFloat)
    
    func anchorWith(top: NSLayoutYAxisAnchor?,
                paddingTop: CGFloat,
                bottom: NSLayoutYAxisAnchor?,
                paddingBottom: CGFloat,
                left: NSLayoutXAxisAnchor?,
                paddingLeft: CGFloat,
                right: NSLayoutXAxisAnchor?,
                paddingRight: CGFloat,
                width: CGFloat,
                greaterHeight: CGFloat)
}
