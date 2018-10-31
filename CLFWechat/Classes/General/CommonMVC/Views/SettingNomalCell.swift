//
//  SettingNomalCell.swift
//  CLFWechat
//
//  Created by clf on 2018/10/18.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation

class SettingNomalCell: SettingBaseCell {
    override var model: SettingCellModel?{
        didSet{
            self.setModel()
        }
    }
    //是否显示cell右侧箭头
    var isShowIndicator = false
    
    lazy var iconView:UIImageView = {
        let iconV = UIImageView()
        return iconV
    }()

    
    lazy var titleLabel: UILabel = {
        let titleL = UILabel()
        return titleL
    }()
    
    lazy var tipImgView: UIImageView = {
        let tipImgV = UIImageView()
        tipImgV.contentMode = .center
        return tipImgV
    }()
    lazy var tipTitleLabel:UILabel = {
        let tipTitleL = UILabel()
        tipTitleL.textColor = UIColor.lightGray
        tipTitleL.font = UIFont.systemFont(ofSize: 14.0)
        tipTitleL.textAlignment = .right
        return tipTitleL
    }()
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupUI()
        
    }
    
    /// fatalError:https://swifter.tips/fatalerror/
    required init?(coder aDecoder: NSCoder) {
        fatalError("required init?(coder:) has not been implemented ")
    }
}

extension SettingNomalCell{
    fileprivate func setupUI(){
        _ = self.subviews.map {
            $0.removeFromSuperview()
        }
        
        self.addSubview(iconView)
        self.addSubview(titleLabel)
        self.addSubview(tipImgView)
        self.addSubview(tipTitleLabel)
    }
}

extension SettingNomalCell{
    func setModel() {
        if let icon = self.model?.icon {
            iconView.isHidden = false
            iconView.image = icon
        }else{
            iconView.isHidden = true
        }
        if let title = self.model?.title{
            titleLabel.isHidden = false
            titleLabel.text = title
            titleLabel.sizeToFit()
        }else{
            titleLabel.isHidden = true
        }
        if let tipImg = self.model?.tipImg  {
            tipImgView.image = UIImage(named: tipImg)
            tipImgView.isHidden = false
        }else{
            tipImgView.isHidden = true
        }
        if let tipTitle = self.model?.tipTitle {
            tipTitleLabel.isHidden = false
            tipTitleLabel.text = tipTitle
            tipTitleLabel.sizeToFit()
        }else{
            tipTitleLabel.isHidden = true
        }
        if model?.type != .default {
            self.accessoryType = .none
            isShowIndicator = false
        }else{
            self.accessoryType = .disclosureIndicator
            isShowIndicator = true
        }
        
        
        if model?.icon != nil{
            iconView.snp.remakeConstraints { (make) in
                make.left.equalTo(self.snp.left).offset(15)
                
                make.centerY.equalTo(self.snp.centerY)
            }
            titleLabel.snp.remakeConstraints { (make) in
                make.left.equalTo(iconView.snp.right).offset(15)
                make.top.bottom.equalTo(self)
            }
        }else{
            titleLabel.snp.remakeConstraints { (make) in
                make.left.equalTo(self.snp.left).offset(15)
                make.top.bottom.equalTo(self)
            }
        }
        let rightMagin = isShowIndicator ? -33:-10
        
        if model?.tipImg != nil {
            tipImgView.snp.remakeConstraints { (make) in
                make.right.equalTo(self.snp.right).offset(rightMagin)
                make.width.height.equalTo(25)
                make.centerY.equalTo(self.snp.centerY)
            }
        }
        
        if model?.tipTitle != nil {
            CLFLog(model?.tipTitle)

            if model?.tipImg != nil {
                tipTitleLabel.snp.remakeConstraints {
                     $0.right.equalTo(tipImgView.snp.left).offset(5)
                     $0.top.bottom.equalTo(self)
                }
            }else{
                tipTitleLabel.snp.remakeConstraints {
                    $0.right.equalTo(self.snp.right).offset(rightMagin)
                    $0.top.bottom.equalTo(self)
                }
            }
        }
    }
}
