//
//  UIDataManager.swift
//  CLFWechat
//
//  Created by clf on 2018/10/18.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation

class UIDataManager: NSObject {

    
    class func getMineVCData() -> [[SettingCellModel]]{
        //待处理user信息
        let userModel = SettingCellModel(icon:#imageLiteral(resourceName: "SettingProfileHead") , title: "用户名", tipImg: nil, tipTitle: nil, type: .avatar)
        userModel.subTitle = "123456"
        return [
            [userModel],
            [SettingCellModel(icon:#imageLiteral(resourceName: "MoreMyBankCard") , title: "钱包")],
            [
                SettingCellModel(icon: #imageLiteral(resourceName: "MoreMyFavorites"), title: "收藏"),
                SettingCellModel(icon: #imageLiteral(resourceName: "MoreMyAlbum"), title: "相册"),
                SettingCellModel(icon: #imageLiteral(resourceName: "MyCardPackageIcon"), title: "卡包"),
                SettingCellModel(icon: #imageLiteral(resourceName: "MoreExpressionShops"), title: "表情")
            ],
            [SettingCellModel(icon: #imageLiteral(resourceName: "MoreSetting"), title: "设置")]
        ]
        
    }
    //设置界面数据
    class func getSetVCData() -> [[SettingCellModel]] {
        return [[SettingCellModel(icon: nil, title: "账号与安全")],
                [SettingCellModel(icon: nil, title: "新消息通知"),
                 SettingCellModel(icon: nil, title: "隐私"),
                 SettingCellModel(icon: nil, title: "通用")],
                [SettingCellModel(icon: nil, title: "帮助与反馈"),
                 SettingCellModel(icon: nil, title: "关于微信", tipImg: nil, tipTitle: "版本6.7.3", type: .default)],
                [SettingCellModel(icon: nil, title: "插件")],
                [SettingCellModel(icon: nil, title: "切换账号", tipImg: nil, tipTitle: nil, type: .middle)],
                [SettingCellModel(icon: nil, title: "退出登录", tipImg: nil, tipTitle: nil, type: .middle)]
        ]
    }
    
    class func  getUserInfoData() -> [[SettingCellModel]] {
        return [
        
        ]
    }
    
    
    
}
