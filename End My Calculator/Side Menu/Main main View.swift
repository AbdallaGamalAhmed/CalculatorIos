//
//  Main main View.swift
//  My Calculator
//
//  Created by Abdalla Gamal on 8/19/18.
//  Copyright © 2018 Abdalla Gamal. All rights reserved.
//

import UIKit

class MainmainView: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle{return.lightContent}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(MainmainView.hideMenu_Func), name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(MainmainView.showMenu_Func), name: NSNotification.Name(rawValue: "ShowMenu"), object: nil)
        
    }
    
    @IBOutlet weak var LeftConstrain: NSLayoutConstraint!
    
    @objc func hideMenu_Func()  {
        LeftConstrain.constant = 0
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
        
        RadioClass.IsMenu = false
    }
    
    @objc func showMenu_Func()  {
        LeftConstrain.constant = self.view.frame.size.width * 0.7
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
        
        RadioClass.IsMenu = true
    }
    
    
}
