//
//  ZYNavigationController.swift
//  斗鱼
//
//  Created by 张乾坤 on 2019/3/19.
//  Copyright © 2019 张乾坤. All rights reserved.
//

import UIKit

class ZYNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
//        自定义导航栏的背景颜色
        let naView = self.navigationBar.subviews.first
        
        guard naView != nil else {
            return
        }
        
        
        
    }
    
//    重写跳转
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.viewControllers.count > 0 {
            
            //跳转之后隐藏
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: true)
        
    }
    
    

   

}
