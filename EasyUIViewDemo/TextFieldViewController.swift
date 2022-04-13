//
//  TextFieldViewController.swift
//  EasyUIViewDemo
//
//  Created by shrishti on 12/04/22.
//

import UIKit
import EasyUIView

class TextFieldViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var phoneNo: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.delegate = self
        email.delegate = self
        password.delegate = self
        phoneNo.delegate = self
    }
    
    @IBAction func submitBtn(_ sender: Any) {
      if email.isValidEmail == false  {
          self.showAlert(message: "Enter Valid Email")
            return
        }
        else if email.isEmpty == true {
            self.showAlert(message: "Enter Your Email")
        }
        else if password.isValidCount(sendOneLess: 6) == true {
            self.showAlert(message: "Password Should be more then 6 characters")
        }
        
    }
    
   

}
