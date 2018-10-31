//
//  SettingViewController.swift
//  CLFWechat
//
//  Created by clf on 2018/10/17.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation

class SettingViewController: SettingBaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "设置"
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.models = UIDataManager.getSetVCData()
        self.tableView.reloadData()
    }
    
    
}
