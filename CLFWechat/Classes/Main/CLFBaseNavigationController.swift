//
//  BaseNavigationController.swift
//  CLFWechat
//
//  Created by clf on 2018/10/10.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation
import UIKit
class CLFBaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barStyle = .black
        //修改导航栏背景颜色
        navigationBar.barTintColor = kNavBarBgColor
        let bar = UINavigationBar.appearance()
        
        //设置导航栏文字颜色和大小
        bar.titleTextAttributes = [
            .foregroundColor:UIColor.white,
            .font:UIFont.systemFont(ofSize: 18)
        ]
        
    }
}
