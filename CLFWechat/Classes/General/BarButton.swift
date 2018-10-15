//
//  BarButton.swift
//  CLFWeichat
//
//  Created by clf on 2017/7/25.
//  Copyright © 2017年 ppc. All rights reserved.
//


/*
 var arrayCount = dataList?.count
 
 这时问号的意思类似于isResponseToSelector，即如果变量是nil，则不能响应后面的方法，所以会直接返回nil。如果变量非nil，就会拆Some(T)的包，取出原始值执行后面的操作。
 
 var arrayCount = dataList!.count
 
 这里的叹号和之前的问号则不同，这里表示我确定dataList一定是非nil的，所以直接拆包取出原始值进行处理。因此此处如果不小心让dataList为nil，程序就会crash掉。
 
 */

import UIKit

class BarButton: UIButton {
    init(bgColor: UIColor?,disableColor:UIColor?,title:String,titleColor:UIColor?,titleHighlightedColor:UIColor?) {
        super.init(frame: CGRect.zero)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleHighlightedColor, for: .highlighted)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        self.setBackgroundImage((bgColor ?? kBtnWhite).trans2Image(), for: .normal)
        self.setBackgroundImage((disableColor ?? kBtnWhite).trans2Image(), for: .disabled)
        self.layer.cornerRadius = 5.0
        self.layer.masksToBounds = true
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
