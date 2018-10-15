//
//  UserViewController.swift
//  CLFWeichat
//
//  Created by clf on 2017/7/21.
//  Copyright © 2017年 ppc. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red;
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


// MARK: - 初始化
//使用 fileprivate 来暴露内部接口, 用 private 来进行内部实现
extension UserViewController{
    fileprivate func setup() {
        //添加背景
        view.backgroundColor = UIColor.black;
        let bgImgView = UIImageView.init(image:#imageLiteral(resourceName: "LaunchImage"))
        bgImgView.contentMode = .scaleAspectFit
        bgImgView.frame = view.bounds
        view.addSubview(bgImgView)
        
        let margin: CGFloat = 20
        let btnW: CGFloat = (CLFScreenW - 3*margin)*0.5
        let btnH: CGFloat = 45
        
        //登录按钮
        let loginBtn = BarButton(bgColor: kBtnWhite, disableColor: nil, title: "登录", titleColor: UIColor.black, titleHighlightedColor: UIColor.darkGray)
        loginBtn.addTarget(self, action: #selector(login), for: .touchUpInside)
        view.addSubview(loginBtn)
        //http://snapkit.io/docs/
        loginBtn.snp.makeConstraints { (make) in
            make.left.equalTo(view).offset(margin)
            make.width.equalTo(btnW)
            make.height.equalTo(btnH)
            make.bottom.equalTo(view).offset(-margin)
        }
        
        //注册
        let registerBtn = BarButton(bgColor: kBtnGreen, disableColor: nil, title: "注册", titleColor: kBtnWhite, titleHighlightedColor: kBtnDisabledWhite)
        registerBtn.addTarget(self, action: #selector(register), for: .touchUpInside)
        view.addSubview(registerBtn)
        registerBtn.snp.makeConstraints { (make) in
            make.right.equalTo(-margin)
            make.width.height.bottom.equalTo(loginBtn)
            }
    }
}

/*
 在 Swift 代码中，使用@objc修饰后的类型，可以直接供 Objective-C 调用。可以使用@objc修饰的类型包括：
 1、未嵌套的类
 2、协议
 3、非泛型枚举（仅限于原始值为整形的类型）
 4、类和协议中的属性和方法
 5、构造器和析构器
 6、下标
 
 在swift 中 如果一个按钮添加点击方法 如果定义为Private  或者 定义为 FilePrivate 那么会在Addtaget方法中找不到私有方法
 但是又不想把方法暴露出来，避免外界访问 ，那么可以在私有方法前加 @objc 修饰 那么它就能找到那个方法了
 
 @objc 作用
 1 fileprivate 或者 private  保证方法私有 能在同一个类 或者 同一个文件（extension）中访问这个方法 如果定义为private  那么只能在一个类中访问 不能在类扩展中访问
 2 允许这个函数在“运行时”通过oc的消息机制调用
 
 */
//MARK: - 事件处理
extension UserViewController {
    @objc func login(){
       CLFLog("登录")
        let loginVC = LoginViewController()
        present(loginVC, animated: true, completion: nil)
    }
    
    @objc func register(){
        CLFLog("注册")
        
    }
}
