//
//  UIViewExtension.swift
//  UIStorybordView
//
//  Created by shrishti singh on 10/02/22.
//

import Foundation
import UIKit


//MARK: UIView Extention

@IBDesignable  class UIViewExtension: UIView {
    
    //corner radius for view
    
    @IBInspectable var cornerRadius: Double {
        get {
            return Double(self.layer.cornerRadius)
        }
        set {
            self.layer.cornerRadius = CGFloat(newValue)
        }
    }
    
    // border width for a View
    
    @IBInspectable var borderWidth: Double {
        get {
            return Double(self.layer.borderWidth)
        }
        set {
            self.layer.borderWidth = CGFloat(newValue)
        }
    }
    
    //Clip to bound
    
//    @IBInspectable public override var clipsToBounds: Bool {
//        get {
//            return Bool(self.clipsToBounds)
//        }
//        set {
//            self.clipsToBounds = Bool(newValue)
//        }
//    }
    
    
    //Border color for view
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    
    // shadowColor for a view
    
    @IBInspectable var shadowColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
    }
    
    
  // shadowOpacity for a view
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    
   // shadowOffSet for a view
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    
    //Shadow Radius For a View
    
    @IBInspectable var shadowRadius: Double {
        get {
            return Double(self.layer.shadowRadius)
        }
        set {
            self.layer.shadowRadius = CGFloat(newValue)
        }
    }
}

