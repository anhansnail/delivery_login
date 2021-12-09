//
//  ForgotPWViewController.swift
//  delivery_app_authen
//
//  Created by Minh Anh on 09/12/2021.
//

import UIKit

class ForgotPWViewController: UIViewController {
    @IBOutlet var emailOL: UITextField! {
        didSet {
            emailOL.tintColor = UIColor(rgb: 0x696D73)
            emailOL.setIcon(UIImage(named: "envelope")!)
        }
    }
    @IBOutlet var resetBtnOL: UIButton! {
        didSet {
            resetBtnOL.addBorderRadiusBtn(btn: resetBtnOL, degree: 25.0)
        }
    }
    @IBAction func xBtnAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //dismiss keyboard
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
