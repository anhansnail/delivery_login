//
//  SignInViewController.swift
//  delivery_app_authen
//
//  Created by Minh Anh on 08/12/2021.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet var emailOL: UITextField! {
        didSet {
            emailOL.tintColor = UIColor(rgb: 0x696D73)
            emailOL.setIcon(UIImage(named: "envelope")!)
        }
    }
    @IBOutlet var passwordOL: UITextField! {
        didSet {
            passwordOL.tintColor = UIColor(rgb: 0x696D73)
            passwordOL.setIcon(UIImage(named: "unlock")!)
            
        }
    }
    @IBOutlet var emailViewOL: UIView!
    @IBOutlet var signInBtnOL: UIButton! {
        didSet {
            signInBtnOL.addBorderRadiusBtn(btn: signInBtnOL, degree: 25.0)
        }
    }
    @IBAction func xBtnAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        self.present(ViewController, animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //dismiss keyboard
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        //        emailViewOL.layer.borderWidth = 2
        //        emailViewOL.layer.borderColor = UIColor.red.cgColor
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
