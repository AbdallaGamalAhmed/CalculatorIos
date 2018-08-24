//
//  MyShadowView.swift
//  My Calculator
//
//  Created by Abdalla Gamal on 7/21/18.
//  Copyright © 2018 Abdalla Gamal. All rights reserved.
//

import UIKit

class My_Shadow_View_Class: UIView {
    
    let layer_Gradiant : CAGradientLayer = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // This Is For Make Gradiant Layer For ShadowView
        
        let firstColor = UIColor.init(red: 157/255, green: 72/255, blue: 165/255, alpha: 1).cgColor
        let secondColor = UIColor.init(red: 77/255, green: 121/255, blue: 207/255, alpha: 1).cgColor
        layer_Gradiant.colors = [firstColor , secondColor]
        layer_Gradiant.zPosition = -1
        self.layer.addSublayer(layer_Gradiant)
        
        
        // This is For Make Shadow For ShadowView
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.3).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOffset = CGSize(width: 0, height: -3) // The Dirction of Shadow
        self.layer.shadowOpacity = 0.4
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer_Gradiant.frame = CGRect(x: 0, y: 0,
                                      width: self.frame.size.width,
                                      height: self.frame.size.height)
    }
}
