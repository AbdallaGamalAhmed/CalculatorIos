//
//  Shadow View Side Menu.swift
//  My Calculator
//
//  Created by Abdalla on 8/22/18.
//  Copyright © 2018 Abdalla Gamal. All rights reserved.
//

import UIKit

class SideMenuShadow : UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 3, height: 0) // The Dirction of Shadow
        self.layer.shadowOpacity = 0.35
    }
}
