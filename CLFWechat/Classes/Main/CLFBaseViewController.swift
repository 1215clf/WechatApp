//
//  CLFBaseViewController.swift
//  CLFWeichat
//
//  Created by clf on 2018/9/30.
//  Copyright © 2018年 ppc. All rights reserved.
//

import Foundation
class CLFBaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        view.backgroundColor = kCommonBgColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
}
