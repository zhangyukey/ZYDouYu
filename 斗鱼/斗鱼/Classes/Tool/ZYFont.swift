//
//  ZYFont.swift
//  斗鱼
//
//  Created by 张乾坤 on 2019/3/20.
//  Copyright © 2019 张乾坤. All rights reserved.
//

import UIKit


// 常规字体
func FontSize(_ size : CGFloat) -> UIFont {
    
    return UIFont.systemFont(ofSize: AdaptW(size))
}

// 加粗字体
func BoldFontSize(_ size : CGFloat) -> UIFont {
    
    return UIFont.boldSystemFont(ofSize: AdaptW(size))
    
}
