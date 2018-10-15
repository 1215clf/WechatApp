//
//  CLFProgressHUD.swift
//  CLFWeichat
//
//  Created by clf on 2017/7/26.
//  Copyright © 2017年 ppc. All rights reserved.
//

import UIKit
import SVProgressHUD

fileprivate enum HUDType: Int {
    case success
    case errorObject
    case errorString
    case info
    case loading
}

class CLFProgressHUD: NSObject {
    class func initHUD(){
        SVProgressHUD.setBackgroundColor(UIColor(red:0.0,green:0.0,blue:0.0,alpha:0.7))
        SVProgressHUD.setForegroundColor(UIColor.white)
        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.none)
        SVProgressHUD.setFont(UIFont.systemFont(ofSize: 14))
    }
    //成功
    class func showSuccess(withStatus string:String?){
        
        self.CLFProgressHUDShow(.success,status: string)
        
    }
    //失败string
    class func showError(withStatus string:String?) {
        self.CLFProgressHUDShow(.errorString,status: string)
    }
    //失败 error
    class func showError(withObject error:NSError) {
        self.CLFProgressHUDShow(.errorObject,status: nil,error: error)
    }
    //加载中：菊花
    class func showStatus(_ string:String?) {
        self.CLFProgressHUDShow(.loading,status: string)
    }
    //警告
    class func showWarning(withStatus string:String?) {
        self.CLFProgressHUDShow(.info,status: string)
    }
    //消失
    class func dismiss() {
        SVProgressHUD.dismiss()
    }
    //有时为方法的第一个参数提供外部参数名也是有用的，可以显示在参数前添加#号
     //如果不想为方法的第二个及后续参数提供外部参数名称，在前面使用下划线 (_) 作为该参数的显式外部名称。
    fileprivate class func CLFProgressHUDShow(_ type: HUDType ,status:String? = nil,error:NSError?=nil){
        SVProgressHUD.setDefaultMaskType(.none)
        switch type {
        case .success:
            SVProgressHUD.showSuccess(withStatus: status)
            break
        case .errorObject:
            //guard语句和if语句有点类似，都是根据其关键字之后的表达式的布尔值决定下一步执行什么。但与if语句不同的是，guard语句只会有一个代码块，不像if语句可以if else多个代码块。
            //guard语句判断其后的表达式布尔值为false时，才会执行之后代码块里的代码，如果为true，则跳过整个guard语句
            //guard可以把不符合条件的处理事件前置，以免程序猿在开发中有遗漏的情况出现。
            //使用条件：必须在函数中使用，必须带else
            //这里判断 error，if error不为nil，则赋值给newError，else则执行{}
            guard let newError = error else{
                SVProgressHUD.showError(withStatus: "程序出错了")
                return
            }
            if newError.localizedFailureReason == nil{
                 SVProgressHUD.showError(withStatus: "程序出错了")
            }else{
                SVProgressHUD.showError(withStatus: error?.localizedFailureReason)
            }
            break
        case .errorString,.info:
            SVProgressHUD.showError(withStatus: status)
            break
        case .loading:
            SVProgressHUD.setDefaultMaskType(.clear)
            SVProgressHUD.show(withStatus: status)
            break
        default:
            break
        }
    }
    
}
