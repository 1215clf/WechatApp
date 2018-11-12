//
//  CountryButton.swift
//  CLFWechat
//
//  Created by clf on 2018/11/12.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation
class CountryButton: UIButton {
    
    let imgW: CGFloat = 10
    
    override func awakeFromNib() {
        self.imageView?.contentMode = .scaleAspectFit
    }
    
    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        return CGRect(x: contentRect.size.width - imgW, y: 0, width: imgW, height: contentRect.size.height)
    }
    
    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
        return CGRect(x: 0, y: 0, width: contentRect.size.width - imgW, height: contentRect.size.height)
    }

}
