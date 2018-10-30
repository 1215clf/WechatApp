//
//  SettingAvatarCell.swift
//  CLFWechat
//
//  Created by clf on 2018/10/18.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation
import UIKit



class SettingAvatarCell: SettingBaseCell {
    override var model: SettingCellModel?{
        //willSet是值将要改变时触发，存在一个newValue的变量。
        //didSet是值已经改变触发，存在一个oldValue的变量。
        didSet {
            self.setModel()
        }
    }
    
    //MARK: - 懒加载 创建控件
    lazy var iconImgView:UIImageView = {
       let iconIV = UIImageView()
        return iconIV
    }()
    
    lazy var titleLabel:UILabel = {
        let titleL = UILabel()
        titleL.font = UIFont.systemFont(ofSize: 17.0)
        return titleL
    }()
    
    lazy var subTitleLabel:UILabel = {
        let subTitleL = UILabel()
        subTitleL.font = UIFont.systemFont(ofSize: 14.0)
        return subTitleL
    }()
    
    lazy var rigntImgView:UIImageView = {
        let rightIV = UIImageView()
        return rightIV
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUp()
        //设置右边箭头
        self.accessoryType = .disclosureIndicator
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
/**
 map的使用
 
 let numbers = [1,2,3,4]
 let result = numbers.map { $0 + 2 }
 print(result)    //输出：3，4，5，6
map方法接受的是一个闭包参数，然后它会遍历整个numbers数组，并对数组中每一个元素执行闭包中定义的操作。相当于对数组中的所有元素做了一个映射。

swift自动为闭包提供参数名缩写功能，可以直接通过$0和$1等来表示闭包中的第一个第二个参数，并且对应的参数类型会根据函数类型来进行判断。
 
 map返回一个新的数组，这里我不需要用到返回值，所以用_表示
 */

extension SettingAvatarCell{
    fileprivate func setUp(){
        //remove
        _ = self.subviews.map{
            CLFLog($0)
            $0.removeFromSuperview()
        }
        
        //add
        self.addSubview(iconImgView)
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        self.addSubview(rigntImgView)
        
    }
}


extension SettingAvatarCell{
    fileprivate func setModel(){
        iconImgView.isHidden = false
        iconImgView.image = model?.icon
        titleLabel.text = model?.title
        subTitleLabel.text = model?.subTitle
        rigntImgView.image = #imageLiteral(resourceName: "setting_myQR")
        
        titleLabel.sizeToFit()
        subTitleLabel.sizeToFit()
        
        iconImgView.snp.remakeConstraints { (make) in
            make.left.equalTo(self.snp.left).offset(15)
            make.top.equalTo(self.snp.top).offset(8)
            make.bottom.equalTo(self.snp.bottom).offset(-8)
            make.width.equalTo(iconImgView.snp.height)
        }
        titleLabel.snp.remakeConstraints { (make) in
            make.left.equalTo(iconImgView.snp.right).offset(15)
            make.bottom.equalTo(iconImgView.snp.centerY)
        }
        subTitleLabel.snp.remakeConstraints { (make) in
            make.left.equalTo(titleLabel.snp.left)
            make.top.equalTo(iconImgView.snp.centerY).offset(10)
        }
        rigntImgView.snp.remakeConstraints { (make) in
            make.right.equalTo(self.snp.right).offset(-30)
            make.width.height.equalTo(18)
            make.centerY.equalTo(iconImgView.snp.centerY)
            
        }
    }
}
