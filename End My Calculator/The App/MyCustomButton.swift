//
//  MyCustomButton.swift
//  My Calculator
//
//  Created by Abdalla Gamal on 7/21/18.
//  Copyright © 2018 Abdalla Gamal. All rights reserved.
//

import UIKit

class My_Custom_Button_Class: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        self.layer.borderColor = UIColor.white.withAlphaComponent(0.2).cgColor
        self.layer.borderWidth = 3
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2
        
    }
}
