//
//  UITextfieldExtension.swift
//  UIStorybordView
//
//  Created by shrishti singh on 10/02/22.
//

import Foundation
import UIKit

//MARK: UIView Extention
@IBDesignable public extension UITextField {
    
    //corner radius for textfield
    
    @IBInspectable var cornerRadius: Double {
        get {
            return Double(self.layer.cornerRadius)
        }
        set {
            self.layer.cornerRadius = CGFloat(newValue)
        }
    }
    
    // border width for a textfield
    
    @IBInspectable var borderWidth: Double {
        get {
            return Double(self.layer.borderWidth)
        }
        set {
            self.layer.borderWidth = CGFloat(newValue)
        }
    }
    
    //Clip to bound textfield
    
    @IBInspectable override  var clipsToBounds: Bool {
        get {
            return Bool(self.clipsToBounds)
        }
        set {
            self.clipsToBounds = Bool(newValue)
        }
    }
    
    
    //Border color for textfield
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    // shadowColor for a textfield
    
    @IBInspectable var shadowColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
    }
    
    
  // shadowOpacity for a textfield
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    
   // shadowOffSet for a textfield
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    
    //Shadow Radius For a textfield
    
    @IBInspectable var shadowRadius: Double {
        get {
            return Double(self.layer.shadowRadius)
        }
        set {
            self.layer.shadowRadius = CGFloat(newValue)
        }
    }
    
    @IBInspectable var paddingLeftCustom: CGFloat {
            get {
                return leftView!.frame.size.width
            }
            set {
                let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.size.height))
                leftView = paddingView
                leftViewMode = .always
            }
        }

        @IBInspectable var paddingRightCustom: CGFloat {
            get {
                return rightView!.frame.size.width
            }
            set {
                let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: newValue, height: frame.size.height))
                rightView = paddingView
                rightViewMode = .always
            }
        }

    }

// validation for text field
public extension UITextField{
    
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.text!)
    }
    var isValidPhoneNo: Bool{
        if self.text!.count >= 10{
            return true
        }
        return false
    }
    
    var isEmpty: Bool {
        if self.text == nil || self.text == "" || self.text!.trimmingCharacters(in: .whitespaces) == "" {
            return true
        }
        return false
    }
    
    func isValidCount(sendOneLess count: Int) -> Bool{
        if self.text!.count > count{
            return false
        }
        return true
    }
    
    var containsOnlyLetters: Bool {
        
        for chr in self.text! {
            if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") ) {
                return false
            }
        }
        return true
    }
    
    
}

public extension UIViewController {
    func showAlert(message: String?, title:String = "EasyUIView" , otherButtons:[String:((UIAlertAction)-> ())]? = nil, cancelTitle: String = "Ok", cancelAction: ((UIAlertAction)-> ())? = nil) {
            let newTitle = title.capitalized
            let newMessage = message
            let alert = UIAlertController(title: newTitle, message: newMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: cancelTitle, style: .default, handler: cancelAction))
            
            if otherButtons != nil {
                for key in otherButtons!.keys {
                    alert.addAction(UIAlertAction(title: key, style: .default, handler: otherButtons![key]))
                }
            }
            present(alert, animated: true, completion: nil)
        }

}




