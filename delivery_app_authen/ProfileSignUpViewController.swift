//
//  ProfileSignUpViewController.swift
//  delivery_app_authen
//
//  Created by Minh Anh on 09/12/2021.
//

import UIKit

class ProfileSignUpViewController: UIViewController {
    @IBOutlet var fistNameOL: UITextField! {
        didSet {
            fistNameOL.tintColor = UIColor(rgb: 0x696D73)
            fistNameOL.setIcon(UIImage(named: "profile")!)
        }
    }
    @IBOutlet var lastNameOL: UITextField!
    @IBOutlet var dateOL: UITextField! {
        didSet {
            dateOL.tintColor = UIColor(rgb: 0x696D73)
            dateOL.setIcon(UIImage(named: "calendar")!)
            
        }
    }
    @IBOutlet var phoneOL: UITextField! {
        didSet {
            phoneOL.tintColor = UIColor(rgb: 0x696D73)
            phoneOL.setIcon(UIImage(named: "smartphone")!)
            
        }
    }
    @IBOutlet var continueBtnOL: UIButton! {
        didSet {
            continueBtnOL.addBorderRadiusBtn(btn: continueBtnOL, degree: 25.0)
        }
    }
    @IBAction func xBtnAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBOutlet var cameraUL: UIImageView! {
        didSet {
            cameraUL.layer.cornerRadius = cameraUL.frame.size.width / 2
        }
    }
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        // Do any additional setup after loading the view.
    }
    
    func createToolBar() -> UIToolbar {
        //create tool bar: button at the view
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        return toolbar
        //        #selector(donePressed)
        
    }
    func createDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels
        // Presented when object becomes first responder.  If set to nil, reverts to following responder chain.  If
        // set while first responder, will not take effect until reloadInputViews is called.
        //assign datepicker to text field
        dateOL.inputView = datePicker
        
        // assign toolbar for textfield
        dateOL.inputAccessoryView = createToolBar()
        
        //datepicker mode
        datePicker.datePickerMode = .date
    }
    
    @objc func donePressed() {
        let dateFormatr = DateFormatter()
        dateFormatr.dateFormat = "dd MMMM, h:mm a"
        self.dateOL.text = dateFormatr.string(from: (datePicker.date))
        self.view.endEditing(true)
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
