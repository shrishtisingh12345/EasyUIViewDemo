//
//  ButtonViewSuper.swift
//  EasyUIView
//
//  Created by shrishti on 15/03/22.
//

import UIKit
import Foundation

@IBDesignable  class ButtonViewSuper:UIView
{
   
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var iconImage1: UIImageView!
    @IBOutlet weak var iconImage2: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    func setUp()  {
        buttonView = loadViewFromNib(nibName: "ButtonViewSuper")
        buttonView.frame = bounds
        buttonView.autoresizingMask = UIView.AutoresizingMask.flexibleWidth
        buttonView.autoresizingMask = UIView.AutoresizingMask.flexibleHeight
        addSubview(buttonView)
    }
    
    func loadViewFromNib(nibName:String) -> UIView{
        let bundel = Bundle(for: type(of: self))
         let nib = UINib(nibName: nibName, bundle: bundel)
         let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
        
        }
    //MARK: IBinspectable
     
     @IBInspectable var customfirstImage: UIImage?
     {
         get{
             return iconImage1.image
         }
         set(customfirstImage) {
             iconImage1.image = customfirstImage
         }
     }
     
     @IBInspectable var customSecondImage: UIImage?
     {
         get{
             return iconImage2.image
         }
         set(customSecondImage) {
             iconImage2.image = customSecondImage
         }
     }
    
   
   
    @IBInspectable var buttonTitle: String?
    {
        get{
            return (button.setTitle(self.buttonTitle, for: .normal) as! String)
        }
        set(buttonTitle) {
            button.setTitle(buttonTitle, for: .normal)
        }
    }
    @IBInspectable var buttonTitleColor: UIColor?
    {
        get{
            return button.tintColor
        }
        set(buttonTitleColor) {
            button.tintColor = buttonTitleColor
        }
    }
    
    @IBInspectable var cornerRadius: Double {
        get {
            return Double(button.layer.cornerRadius)
        }
        set {
            button.layer.cornerRadius = CGFloat(newValue)
        }
    }
    
    // border width for a View
    
    @IBInspectable var borderWidth: Double {
        get {
            return Double(button.layer.borderWidth)
        }
        set {
            button.layer.borderWidth = CGFloat(newValue)
        }
    }
    
    
    //Border color for view
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: button.layer.borderColor!)
        }
        set {
            button.layer.borderColor = newValue?.cgColor
        }
    }
    
    // shadowColor for a view
    
    @IBInspectable var shadowColor: UIColor? {
        get {
            return UIColor(cgColor: button.layer.shadowColor!)
        }
        set {
            button.layer.shadowColor = newValue?.cgColor
        }
    }
    
    
  // shadowOpacity for a view
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return button.layer.shadowOpacity
        }
        set {
            button.layer.shadowOpacity = newValue
        }
    }
    
   // shadowOffSet for a view
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return button.layer.shadowOffset
        }
        set {
            button.layer.shadowOffset = newValue
        }
    }
    
    //Shadow Radius For a View
    
    @IBInspectable var shadowRadius: Double {
        get {
            return Double(button.layer.shadowRadius)
        }
        set {
            button.layer.shadowRadius = CGFloat(newValue)
        }
    }
    //images hidden
    @IBInspectable var leftImageHidden: Bool {
        
        get{
            return iconImage1.isHidden
        }
        set(leftImageHidden) {
            iconImage1.isHidden = leftImageHidden
        }
    }
    @IBInspectable var rightImageHidden: Bool {
        
        get{
            return iconImage2.isHidden
        }
        set(rightImageHidden) {
            iconImage2.isHidden = rightImageHidden
        }
    }
    
}
