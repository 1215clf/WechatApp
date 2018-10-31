//
//  SettingMiddleCell.swift
//  CLFWechat
//
//  Created by clf on 2018/10/18.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation
class SettingMiddleCell: SettingBaseCell {
    override var model: SettingCellModel?{
        didSet{
            self.setModel()
        }
        
    }
    
    lazy var titleLabel:UILabel = {
       let titleL = UILabel()
        return titleL
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.snp.centerX)
            make.centerY.equalTo(self.snp.centerY)

        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("nit?(coder:) has not been implemented")
    }
}
extension SettingMiddleCell{
    fileprivate func setModel(){
        titleLabel.text = model?.title
    }
}
