//
//  SettingModel.swift
//  CLFWechat
//
//  Created by clf on 2018/10/18.
//  Copyright © 2018年 clf. All rights reserved.
//

import Foundation
/**
 ！和？的使用一般2中情况
 1、声明变量时
 var number: Int?
 var str: String!
 
 2、声明变量时
 number?.hashValue
 str!.hashValue

 
 1、声明变量时
 在声明一个变量时，如果不手动初始化，Swift不会自动初始化该变量为一个默认值的。
 对于Optional的变量则不同，Optional的变量在声明时如果不初始化，Swift会自动将该变量初始化为nil。声明变量时，在类型后添加？或者！，就是告诉编译器这是一个Optional的变量，如果没有初始化，你就将其初始化为nil
 
 
 Optional事实上是一个枚举类型，从下图可以看出，Optional包含None和Some两种类型，而nil就是Optional.None，非nil就是Optional.Some。如果Optional变量在声明时不初始化，Swift会调用init()来初始化变量为nil，而用非nil的值初始化变量时，会通过Some(T)把该原始值包装
 
  2.对变量进行操作时
 var arrayCount = dataList?.count
 这时问号的意思类似于isResponseToSelector，即如果变量是nil，则不能响应后面的方法，所以会直接返回nil。如果变量非nil，就会拆Some(T)的包，取出原始值执行后面的操作。
 
 var arrayCount = dataList!.count
 这里的叹号和之前的问号则不同，这里表示我确定dataList一定是非nil的，所以直接拆包取出原始值进行处理。因此此处如果不小心让dataList为nil，程序就会crash掉。
 
 
 问号？
 a.声明时添加？，告诉编译器这个是Optional的，如果声明时没有手动初始化，就自动初始化为nil
 b.在对变量值操作前添加？，判断如果变量时nil，则不响应后面的方法。
 叹号！
 a.声明时添加！，告诉编译器这个是Optional的，并且之后对该变量操作的时候，都隐式的在操作前添加！
 b.在对变量操作前添加！，表示默认为非nil，直接解包进行处理
 
 */



enum SettingCellType {
    case `default`
    case check
    case `switch`
    case middle
    case avatar
}
class SettingCellModel: NSObject {
    var icon:UIImage?//图标
    var title:String?//标题
    var subTitle:String?//子标题
    var tipImg:String?//提示图
    var tipTitle:String?//提示语
    
    var type:SettingCellType!//类型
    
    override init() {
        super.init()
    }
    
    init(icon: UIImage?, title: String?, tipImg: String? = nil, tipTitle: String? = nil, type: SettingCellType = .default) {
        self.icon = icon
        self.title = title
        self.tipImg = tipImg
        self.tipTitle = tipTitle
        self.type = type
    }
}


