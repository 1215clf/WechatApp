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
}
