//
//  Segu App View Controler.swift
//  My Calculator
//
//  Created by Abdalla Gamal on 8/19/18.
//  Copyright © 2018 Abdalla Gamal. All rights reserved.
//

import UIKit

class SeguAppViewControler: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(SeguAppViewControler.changVc_Func(notification:)), name: NSNotification.Name(rawValue: "ChangVC"), object: nil)
    }
    
    @objc func changVc_Func(notification : NSNotification)  {
        if let Name = (notification.userInfo as! [String : Any])["ToVc"] as? String {
            performSegue(withIdentifier: Name, sender: nil)
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        performSegue(withIdentifier: "Main", sender: nil)
    }
}
