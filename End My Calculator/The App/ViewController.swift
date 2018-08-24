

import UIKit

class ViewController: UIViewController { // --------- Start Of Class ---------
    
    
    
    @IBAction func SideMenuButton_Action(_ sender: UIButton) {
        
        RadioClass.ToggleMenu()
        
    }
    
    // ---------- Start To Make Bar is White -------
    override var preferredStatusBarStyle: UIStatusBarStyle{ return.lightContent }
    // ---------- End To Make Bar is White -------
    
    
    @IBOutlet weak var ResultLable_Lable: UILabel!
    
    
    // --------- Start Numbers Buttons ------
    @IBAction func Buttons_Action_Button(_ sender: UIButton) {
        
        if ResultLable_Lable.text == "0" { ResultLable_Lable.text = "" }
        
        if sender.tag == -1 {
            if ResultLable_Lable.text!.contains(".") == false{
                ResultLable_Lable.text = ResultLable_Lable.text! + "."
            }
        }else{
            ResultLable_Lable.text = ResultLable_Lable.text! + String(sender.tag)
        }
    }
    //------------ End Numbers Buttons ----------
    
    
    
    // --------- Start Operations Buttons -------
    
    
    let Brain_Const : Brain_Calculator_Class = Brain_Calculator_Class()
    
    @IBAction func Operations_Buttons_Action(_ sender: UIButton) {
        
        Brain_Const.Add(Number: Double(ResultLable_Lable.text!)!, With: Character(sender.titleLabel!.text!))
        
        if sender.titleLabel!.text! == "=" {
            ResultLable_Lable.text = Brain_Const.result_Func()
            Brain_Const.restartArray_Func()
        }else{
            ResultLable_Lable.text = "0"
        }
        
        
    }
    // ----------- End Operations Buttons -----------
    
    @IBAction func AC(_ sender: UIButton) {
        ResultLable_Lable.text = "0"
        Brain_Const.restartArray_Func()
        
    }
    @IBAction func PlusMinus_Action(_ sender: UIButton) {
        ResultLable_Lable.text = String(Double(ResultLable_Lable.text!)! * -1)
    }
    @IBAction func DevidedByHundred_Action(_ sender: UIButton) {
        ResultLable_Lable.text = String(Double(ResultLable_Lable.text!)! / 100)
    }
    
    
    
    override func viewDidLoad() { // ------------ Start ViewDidLoad --------
        super.viewDidLoad()
        
        
        
        }// ------------- End ViewDidLoad -------------
    
    
}// ------------- End class -----------


