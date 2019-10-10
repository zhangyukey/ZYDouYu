//
//  ZYTabBarController.swift
//  斗鱼
//
//  Created by 张乾坤 on 2019/3/19.
//  Copyright © 2019 张乾坤. All rights reserved.
//

import UIKit

class ZYTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpVc()
        
        self.tabBar.tintColor = UIColor.orange
    }
    
   
    func setUpVc(){
        
        setUpChildController(controller: ZYHomeController(), title: "推荐", norImage: "tabLive", selectImage: "tabLiveHL")
        setUpChildController(controller: ZYRecreationController(), title: "娱乐", norImage: "tabYule", selectImage: "tabYuleHL")
        setUpChildController(controller: ZYFollowController(), title: "关注", norImage: "tabFocus", selectImage: "tabFocusHL")
        setUpChildController(controller: ZYFishBarController(), title: "鱼吧", norImage: "tabYuba", selectImage: "tabYubaHL")
        setUpChildController(controller: ZYDiscoverController(), title: "发现", norImage: "tabDiscovery", selectImage: "tabDiscoveryHL")
        
    }
    
    
    
    private func setUpChildController(controller:UIViewController,title:String,norImage:String,selectImage:String){
        
        controller.tabBarItem.title = title
        controller.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -3)// 修改TabBar标题位置
        controller.tabBarItem.image = UIImage(named: norImage)
        controller.tabBarItem.selectedImage = UIImage(named: selectImage)
        
        // 设置 NavigationController
        let nav = ZYNavigationController(rootViewController:controller)
        controller.title = title
        self.addChild(nav)
        
        
        
        
        
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}
