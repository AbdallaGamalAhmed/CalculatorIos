


import UIKit

class SideMenuViewControler: UIViewController {
    
    
    
    @IBAction func SideMenuButtons_Action(_ sender: UIButton) {
        
        var ToVc : String = ""
        
        if sender.tag == 0 { ToVc = "Main" }
        else if sender.tag == 1 { ToVc = "AboutUs" }
        else if sender.tag == 2 { ToVc = "ContactUs" }
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ChangVC"), object: nil, userInfo: ["ToVc" : ToVc ])
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
        
    }
}
