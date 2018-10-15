//
//  CLFMainViewController.swift
//  CLFWeichat
//
//  Created by clf on 2018/9/30.
//  Copyright © 2018年 ppc. All rights reserved.
//

import Foundation
import UIKit

/**
 class 关键字:

 在方法(func 关键字)前 写class关键字有两个作用:
 
 1.在父类中声明这个方法是类方法, 使用类名调用, 本类和子类的类名都可以调用.
 2.这个类方法可以被子类重写, 重写后的方法使用子类的实例对象调用.
 
 override 关键字:
 
 1.在子类中重写父类的实例方法, 使用子类的实例对象调用.
 class关键字是写在父类中的, 声明这个方法是类方法, 并且可以被子类重写.
 override关键字是写在子类中的, 声明这个方法是重写父类的方法.
 */
class CLFMainTabbarController: UITabBarController {
    override func viewDidLoad() {
        
    }
    
    func createChildControllers(){
        let wechatVC = WechatViewController()
        let wechatItem : UITabBarItem = UITabBarItem(title: "微信", image: #imageLiteral(resourceName: "tabbar_mainframe").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "tabbar_mainframeHL").withRenderingMode(.alwaysOriginal))
        wechatVC.tabBarItem = wechatItem
        
        let contactVC = ContactViewController()
        let contactItem:UITabBarItem = UITabBarItem(title: "通讯录", image: #imageLiteral(resourceName: "tabbar_contacts").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "tabbar_contactsHL").withRenderingMode(.alwaysOriginal))
        contactVC.tabBarItem = contactItem
        
        let discoverVC = DiscoverViewController()
        let discoverItem : UITabBarItem = UITabBarItem(title: "发现", image: #imageLiteral(resourceName: "tabbar_discover").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "tabbar_discoverHL").withRenderingMode(.alwaysOriginal))
        discoverVC.tabBarItem = discoverItem
        
        let mineVC = MineViewController()
        let mineItem:UITabBarItem = UITabBarItem(title: "我的", image: #imageLiteral(resourceName: "tabbar_me").withRenderingMode(.alwaysOriginal), selectedImage: #imageLiteral(resourceName: "tabbar_meHL").withRenderingMode(.alwaysOriginal))
        mineVC.tabBarItem = mineItem
        
        
        
        
        
        
        
        
        
    }
}
