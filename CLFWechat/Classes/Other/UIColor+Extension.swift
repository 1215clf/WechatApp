//
//  UIColor+Extension.swift
//  CLFWeichat
//
//  Created by clf on 2017/7/25.
//  Copyright © 2017年 ppc. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    
    
    
    
    func trans2Image() -> UIImage {
        let rect = CGRect(x:0,y:0,width:1.0,height:1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(self.cgColor)
        context?.fill(rect)
        let theImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return theImage ?? UIImage()
    }
}
