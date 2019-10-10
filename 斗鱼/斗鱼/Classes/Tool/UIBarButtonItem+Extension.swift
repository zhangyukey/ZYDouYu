//
//  UIBarButtonItem+Extension.swift
//  斗鱼
//
//  Created by 张乾坤 on 2019/3/19.
//  Copyright © 2019 张乾坤. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    
    //类方法
    class func CreateItem(ImageName:String,highImageName:String,size:CGSize) ->UIBarButtonItem {

        let btn = UIButton(type: UIButton.ButtonType.custom)
        btn.setImage(UIImage(named: ImageName), for: UIControl.State.normal)
        btn.setImage(UIImage(named: highImageName), for: UIControl.State.highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        return UIBarButtonItem(customView: btn)
    }
    

    //构造方法
    convenience init(imageName:String,highImageName:String = "",size:CGSize = CGSize.zero){
        
        let  btn = UIButton(type: UIButton.ButtonType.custom)
        btn.setImage(UIImage(named: imageName), for: UIControl.State.normal)
        
        
        if highImageName != "" {
            
            btn.setImage(UIImage(named: highImageName), for: UIControl.State.highlighted)
        }
        
        if size != CGSize.zero {
            
            
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
            
        }else{
            
          
            btn.sizeToFit()
            
        }
        
        
        
        
        
        self.init(customView: btn)
    }
    
    
    
    
    
    
    
}
