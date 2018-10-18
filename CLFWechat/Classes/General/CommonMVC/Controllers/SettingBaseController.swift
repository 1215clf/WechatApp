//
//  SettingBaseController.swift
//  CLFWechat
//
//  Created by clf on 2018/10/17.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation
import UIKit

fileprivate let headerHeight: CGFloat = 22.0
fileprivate let cellHeight: CGFloat = 44.0
fileprivate let SettingNomalCellID = "SettingNomalCellID"
fileprivate let SettingAvatarCellID = "SettingAvatarCellID"
fileprivate let SettingMiddleCellID = "SettingMiddleCellID"
fileprivate let SettingCellID = "SettingCellID"

class SettingBaseViewController: CLFBaseViewController{
    
    //MARK:- 标记属性
    var isAvatar:Bool = false
    var isSubAvatar:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- 懒加载
    //tableview
    // https://swifter.tips/retain-cycle/
    /**
      Swift 中有 2 种 弱 引用形式，unowned 和 weak
     Unowned 引用，像weak引用一样，不会增加对象的引用计数。
     unowned 设置以后即使它原来引用的内容已经被释放了，它仍然会保持对被已经释放了的对象的一个 "无效的" 引用，它不能是 Optional 值，也不会被指向 nil。如果你尝试调用这个引用的方法或者访问成员属性的话，程序就会崩溃。而 weak 则友好一些，在引用的内容被释放后，标记为 weak 的成员将会自动地变成 nil
     unowned 引用使用的场景是，原始实例永远不会为 nil，闭包可以直接使用它，并且直接定义为显式解包可选值。当原始实例被释放后，在闭包中使用这个捕获值将导致崩溃。如果捕获原始实例在使用过程中可能为 nil ，必须将引用声明为 weak， 并且在使用之前验证这个引用的有效性。
     关于两者使用的选择，Apple 给我们的建议是如果能够确定在访问时不会已被释放的话，尽量使用 unowned，如果存在被释放的可能，那就选择用 weak。
     
     */
    lazy var tableView: UITableView = { [unowned self] in
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = kSectionColor
        tableView.contentInset = UIEdgeInsetsMake(58, 0, 44, 0)
        tableView.scrollIndicatorInsets = UIEdgeInsetsMake(64, 0, 44, 0)
        let footView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.4))
        footView.backgroundColor = kSplitLineColor
        tableView.tableFooterView = footView
        
        return tableView
    }()
    
    
    
}
extension SettingBaseViewController: UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        
    }
}
