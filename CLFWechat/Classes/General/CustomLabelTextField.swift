//
//  DemiFixedTextField.swift
//  CLFWechat
//
//  Created by clf on 2018/11/12.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation

class CustomLabelTextField: UIView {
  init(leftText:String?,placeText:String?,frame:CGRect,keyboardType:UIKeyboardType) {
        super.init(frame: frame)
    
        let addLabel = UILabel()
        addLabel.font = UIFont.systemFont(ofSize: 16)
        addLabel.text = leftText
        addLabel.frame = CGRect(x: 0, y: 0, width: 15, height: 40)
        self.addSubview(addLabel)
    
        let textfield = UITextField()
        textfield.text = placeText
        textfield.keyboardType = keyboardType
//        textfield.snp.makeConstraints(){
//            $0.left.equalTo(self.snp.left).offset(20)
//            $0.right.equalTo(self.snp.right)
//            $0.bottom.equalTo(self.snp.bottom)
//            $0.top.equalTo(self.snp.top)
//        }
    textfield.frame = CGRect(x: 15, y: 0, width: 45, height: 40)
        self.addSubview(textfield)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
}
