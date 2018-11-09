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


extension SettingViewController{
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        CLFLog("点击section\(indexPath.section)--row\(indexPath.row)")
        if indexPath.section == 0 {
            CLFLog("帐号与安全")
        }else if indexPath.section == 1{
            switch indexPath.row{
            case 0:
                CLFLog("新消息通知")
            case 1:
                CLFLog("隐私")
            case 2:
                CLFLog("通知")
            default:
                break
            }
        }else if indexPath.section==2{
            switch indexPath.row{
            case 0:
                CLFLog("帮助与反馈")
            case 1:
                CLFLog("关于微信")
            default:
                break
            }
        }else if indexPath.section == 3{
            CLFLog("切换账号")
        }else{
            CLFLog("退出登录")
        }
    }
    
}
