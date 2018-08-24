

import UIKit

class RadioClass {
    static var IsMenu  = false
    
    static func ToggleMenu()  {
        
        if IsMenu == true {
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "HideMenu"), object: nil)
            
        }else{
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ShowMenu"), object: nil)
            
        }
        
    }
    
}
