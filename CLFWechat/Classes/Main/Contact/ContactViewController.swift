//
//  ContactViewController.swift
//  CLFWeichat
//
//  Created by clf on 2018/9/30.
//  Copyright © 2018年 ppc. All rights reserved.
//

import Foundation
class ContactViewController: CLFBaseViewController {
    
    
    lazy var codeTf:CustomLabelTextField = {
        let codeTf = CustomLabelTextField(leftText: "+", placeText: "86", frame: CGRect(x: 0, y: 100, width: 60, height: 40), keyboardType: .numberPad)
        return codeTf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(codeTf)
    }
    
     @objc func codeSelectAction() {
    }
}
