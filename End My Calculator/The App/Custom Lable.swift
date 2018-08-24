//
//  Custom Lable.swift
//  My Calculator
//
//  Created by Abdalla Gamal on 8/19/18.
//  Copyright © 2018 Abdalla Gamal. All rights reserved.
//

import UIKit

class Custom_Lable: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        self.layer.borderColor = UIColor.white.withAlphaComponent(0.3).cgColor
        self.layer.borderWidth = 3
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10
    }

}
