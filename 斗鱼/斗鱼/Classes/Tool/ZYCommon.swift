//
//  ZYCommon.swift
//  斗鱼
//
//  Created by 张乾坤 on 2019/3/19.
//  Copyright © 2019 张乾坤. All rights reserved.
//

import UIKit


let kScreenHeight = UIScreen.main.bounds.size.height

let kScreenWith = UIScreen.main.bounds.size.width


// 判断是否为 iPhone X
let isIphoneX = kScreenHeight >= 812 ? true : false
// 状态栏高度
let kStatuHeight : CGFloat = isIphoneX ? 44 : 20
// 导航栏高度
let kNavigationBarHeight :CGFloat = 44
// TabBar高度
let kTabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49
let CateItemHeight = kScreenWith / 4
let kCateTitleH : CGFloat = 42

// 隐藏导航栏
let kNavBarHidden : [String:String] = ["isHidden":"true"]
// 显示 导航栏
let kNavBarNotHidden : [String:String] = ["isHidden":"false"]

// 自定义索引值
let kBaseTarget : Int = 1000
// 宽度比
let kWidthRatio = kScreenWith / 375.0
// 高度比
let kHeightRatio = kScreenHeight / 667.0

// 自适应
func Adapt(_ value : CGFloat) -> CGFloat {
    
    return AdaptW(value)
}

// 自适应宽度
func AdaptW(_ value : CGFloat) -> CGFloat {
    
    return ceil(value) * kWidthRatio
}

// 自适应高度
func AdaptH(_ value : CGFloat) -> CGFloat {
    
    return ceil(value) * kHeightRatio
}

func zj_setUpGradientLayer(view : UIView , frame : CGRect , color : [CGColor], corneradiu : CGFloat? = 0){
    let gradientLayer: CAGradientLayer = CAGradientLayer()
    gradientLayer.colors = color
    //(这里的起始和终止位置就是按照坐标系,四个角分别是左上(0,0),左下(0,1),右上(1,0),右下(1,1))
    //渲染的起始位置
    gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
    //渲染的终止位置
    gradientLayer.endPoint = CGPoint.init(x: 1, y: 0)
    //设置frame和插入view的layer
    gradientLayer.frame = frame
    gradientLayer.cornerRadius = corneradiu!
    view.layer.insertSublayer(gradientLayer, at: 0)
}

// 时间戳转日期
func timeStampToString(timeStamp:String,format:String)->String {
    
    let string = NSString(string: timeStamp)
    
    let timeSta:TimeInterval = string.doubleValue
    let dfmatter = DateFormatter()
    dfmatter.dateFormat = format
    
    let date = NSDate(timeIntervalSince1970: timeSta)
    
    return dfmatter.string(from: date as Date)
}

func getloadingImages() -> [UIImage] {
    var loadingImages = [UIImage]()
    for index in 0...14 {
        let loadImageName = String(format: "dyla_img_loading_%03d", index)
        if let loadImage = UIImage(named: loadImageName) {
            loadingImages.append(loadImage)
        }
    }
    return loadingImages
}
