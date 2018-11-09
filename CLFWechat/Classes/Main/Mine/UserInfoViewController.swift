//
//  UserInfoViewController.swift
//  CLFWechat
//
//  Created by clf on 2018/10/31.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation

class UserInfoViewController: SettingBaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.models = UIDataManager.getUserInfoData()
        self.tableView.reloadData()
    }
    
}

extension UserInfoViewController{
    fileprivate func setupUI(){
        self.title = "个人信息"
        self.isSubAvatar = true
    }
    
}
extension UserInfoViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
        
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                CLFLog("头像")
                
            case 1:
                CLFLog("名字")
                
            case 2:
                CLFLog("微信号")
            case 3:
                CLFLog("我的二维码")
                self.pushViewController(MyQRViewController())
            case 4:
                CLFLog("我的地址")
            default:
                break
            }
        } else {
            switch indexPath.row {
            case 0:
                CLFLog("性别")
            case 1:
                CLFLog("地区")
            case 2:
                CLFLog("个性签名")
            default:
                break
            }
        }
    }
}
