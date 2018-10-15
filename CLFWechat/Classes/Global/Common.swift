//
//  Common.swift
//  CLFWeichat
//
//  Created by clf on 2017/7/21.
//  Copyright © 2017年 ppc. All rights reserved.
//

import UIKit
import SnapKit


// 屏幕宽度
let CLFScreenH = UIScreen.main.bounds.height
// 屏幕高度
let CLFScreenW = UIScreen.main.bounds.width

// MARK:- 颜色方法
func normalRGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

func RGBA (r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat)->UIColor{
    return UIColor (red: r, green: g, blue: b, alpha: a)
}

// MARK:- 常用按钮颜色
let kBtnWhite = RGBA(r: 0.97, g: 0.97, b: 0.97, a: 1.00)
let kBtnDisabledWhite = RGBA(r: 0.97, g: 0.97, b: 0.97, a: 0.30)
let kBtnGreen = RGBA(r: 0.15, g: 0.67, b: 0.16, a: 1.00)
let kBtnDisabledGreen = RGBA(r: 0.65, g: 0.87, b: 0.65, a: 1.00)
let kBtnRed = RGBA(r: 0.89, g: 0.27, b: 0.27, a: 1.00)

// 常规背景颜色
let kCommonBgColor = RGBA(r: 0.92, g: 0.92, b: 0.92, a: 1.00)
let kSectionColor = RGBA(r: 0.94, g: 0.94, b: 0.96, a: 1.00)


// 导航栏背景颜色
let kNavBarBgColor = normalRGBA(r: 20, g: 20, b: 20, a: 0.9)


//MARK:-自定义打印方法
//首先我们知道，swift语言的特性并没有宏这种概念，所以我们可以通过定义全局函数的形式来让所有的类都能调用

/*
 func PrintLog<N>(message:N,fileName:String = #file,methodName:String = #function,lineNumber:Int = #line){
 #if DebugType
 print("\(fileName as NSString)\n方法:\(methodName)\n行号:\(lineNumber)\n打印信息\(message)");
 #endif
 }
 */

func CLFLog<T>(_ message : T,file : String = #file,funcName : String = #function,lineNum : Int = #line){
    #if DEBUG
        let fileName = (file as NSString).lastPathComponent
    print("\(fileName):(\(lineNum))-\(message)")
    
    #endif
}
