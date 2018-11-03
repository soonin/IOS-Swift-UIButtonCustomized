//
//  extentions.swift
//  IOS-Swift-UIButtonCustomized
//
//  Created by Pooya on 2018-11-01.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setToDelete(){
        
        self.setTitle("Delete", for: .normal)
        self.setTitleColor(UIColor.yellow, for: .normal)
        self.titleLabel?.font = UIFont(name: "BradleyHandITCTT-Bold" , size: 32)
        
        self.backgroundColor = UIColor.red
        self.tintColor = UIColor.yellow
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.8
        self.layer.borderColor = UIColor(hex: "42f4df").cgColor  //Bright Turquoise
        
        self.layer.shadowColor = UIColor(hex: "00e640").cgColor    //Malachite
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 12
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        self.setImage(UIImage(named:"DeleteIcon"), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 6,left: 120,bottom: 6,right: 14)
        //self.imageRect(forContentRect: CGRect)
        self.titleEdgeInsets = UIEdgeInsets(top: 0,left: -30,bottom: 0,right: 54)
    }
    
    func setToAdd(){
        
        self.setTitle("Add", for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold" , size: 28)
        
        self.backgroundColor = UIColor.blue
        self.tintColor = UIColor.green
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.8
        self.layer.borderColor = UIColor(hex: "42f4df").cgColor  //Bright Turquoise
        
        self.layer.shadowColor = UIColor(hex: "fba3cb").cgColor    //Malachite
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 12
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        self.setImage(UIImage(named:"addicon32x32"), for: UIControl.State.normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 6,left: 120,bottom: 6,right: 14)
        self.titleEdgeInsets = UIEdgeInsets(top: 0,left: -30,bottom: 0,right: 54)
        
//        let icon = UIImage(named: "addicon")!   //new32x32
//        self.setImage(icon, for: .normal)
//        self.imageView?.contentMode = .scaleAspectFit
//        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
    }

    func setToEdit(){
        
        self.setTitle("Edit", for: .normal)
        self.titleLabel?.font = UIFont(name: "TimesNewRomanPSMT" , size: 28)
        
        self.backgroundColor = UIColor.yellow
        self.tintColor = UIColor.blue
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.8
        self.layer.borderColor = UIColor(hex: "ff0000").cgColor  //Bright Turquoise
        
        self.layer.shadowColor = UIColor(hex: "ff8e00").cgColor    //Malachite
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 12
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        self.setImage(UIImage(named:"Feedback32x32"), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 6,left: 120,bottom: 6,right: 14)
        self.titleEdgeInsets = UIEdgeInsets(top: 0,left: -30,bottom: 0,right: 54)
    }

    func setToLock(){
        
        self.setTitle("Lock", for: .normal)
        self.titleLabel?.font = UIFont(name: "Chalkboard SE" , size: 28)
        
        self.backgroundColor = UIColor.lightGray
        self.tintColor = UIColor.blue
        self.layer.cornerRadius = 7
        self.layer.borderWidth = 0.8
        self.layer.borderColor = UIColor(hex: "400098").cgColor  //Bright Turquoise
        
        self.layer.shadowColor = UIColor(hex: "a189ec").cgColor    //Malachite
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 12
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        self.setImage(UIImage(named:"Lock32x32"), for: .normal)
        self.imageEdgeInsets = UIEdgeInsets(top: 6,left: 120,bottom: 6,right: 14)
        self.titleEdgeInsets = UIEdgeInsets(top: 0,left: -30,bottom: 0,right: 54)
    }
    
}

extension UIColor {
    
    static let lightPink = UIColor(hex: "ffc0cb", alpha: 1)
    static let mistyRose = UIColor(hex: "ffe4e1")
    static let dustyDarkGreen  = UIColor(hex: "008080")
    static let lightlightPink = UIColor(hex: "d3ffce")
    static let lightPurple = UIColor(hex: "e6e6fa")
    
    convenience init(hex : String , alpha: CGFloat = 1.0) {
        
        let index0 = hex.index(hex.startIndex, offsetBy: 0)
        let index1 = hex.index(hex.startIndex, offsetBy: 1)
        let index2 = hex.index(hex.startIndex, offsetBy: 2)
        let index3 = hex.index(hex.startIndex, offsetBy: 3)
        let index4 = hex.index(hex.startIndex, offsetBy: 4)
        let index5 = hex.index(hex.startIndex, offsetBy: 5)
        
        let redHexStr = String(hex[index0...index1])     // "12"
        let greedHexStr = String(hex[index2...index3])     // "34"
        let blueHexStr = String(hex[index4...index5])     // "56"
        
        let red = UInt8(redHexStr, radix: 16)
        let green = UInt8(greedHexStr, radix: 16)
        let blue = UInt8(blueHexStr, radix: 16)
        
        self.init(
            red: CGFloat(red!) / 255.0,
            green: CGFloat(green!) / 255.0,
            blue: CGFloat(blue!) / 255.0,
            alpha : alpha
        )
        
    }
    
    convenience init(hexint: Int , alpha : CGFloat = 1.0) {
        self.init(
            red : (CGFloat((hexint >> 16) & 0xFF)),
            green : (CGFloat((hexint >> 8) & 0xFF)),
            blue : (CGFloat(hexint & 0xFF)),
            alpha : alpha
        )
    }
    
    
}
