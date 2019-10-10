//
//  ZYHomeController.swift
//  斗鱼
//
//  Created by 张乾坤 on 2019/3/19.
//  Copyright © 2019 张乾坤. All rights reserved.
//

import UIKit

class ZYHomeController: ZYBaseController {

    
    // 标题数组
    private lazy var titles : [String] = ["分类","推荐","全部","LOL","绝地求生","王者荣耀","QQ飞车"]
    
    // 标题View
    private lazy var pageTitleView : ZYTitlePageView = { [weak self] in
        let frame = CGRect(x: 0, y: 0, width: kScreenWith, height: kCateTitleH)
        let option = ZYPageOptions()
        option.kGradColors = kGradientColors
        option.kBotLineColor = kWhite
        option.kNormalColor = (220,220,220)
        option.kSelectColor = (250,250,250)
        option.kTitleSelectFontSize = 14
        option.isShowBottomLine = false
        option.kIsShowBottomBorderLine = false
        let pageTitleViw = ZYTitlePageView(frame: frame, titles: titles ,options:option)
//        pageTitleViw.delegate = self
        return pageTitleViw
        }()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
        
        
    }
    


}
