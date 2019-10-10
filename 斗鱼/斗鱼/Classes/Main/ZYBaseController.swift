//
//  ZYBaseController.swift
//  斗鱼
//
//  Created by 张乾坤 on 2019/3/19.
//  Copyright © 2019 张乾坤. All rights reserved.
//

import UIKit

class ZYBaseController: UIViewController {

    
    // 状态栏的背景色
    lazy var  statuView : UIView = {
        let view = UIView()
        view.backgroundColor = kMainOrangeColor;
        view.frame = CGRect(x: 0, y: 0, width: kScreenWith, height: kStatuHeight)
        // 设置背景渐变
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = kGradientColors
        //(这里的起始和终止位置就是按照坐标系,四个角分别是左上(0,0),左下(0,1),右上(1,0),右下(1,1))
        //渲染的起始位置
        gradientLayer.startPoint = CGPoint.init(x: 0, y: 0)
        //渲染的终止位置
        gradientLayer.endPoint = CGPoint.init(x: 1, y: 0)
        //设置frame和插入view的layer
        gradientLayer.frame = view.frame
        view.layer.insertSublayer(gradientLayer, at: 0)
        return view
    }()
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = kWhite
        automaticallyAdjustsScrollViewInsets = false
        
    }
    

    func setNavigation(){
        // 修改状态栏背景颜色
        self.navigationController?.navigationBar.barTintColor = kMainOrangeColor
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "btn_user_normal"), style: UIBarButtonItem.Style.done, target: self, action:#selector(self.leftItemClick))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "viewHistoryIcon"), style:.done, target: self, action: #selector(self.rightItemClick))
    }
    

    
//    左边方法的实现
    @objc func leftItemClick(){
        
        print("dddddddddd")
    }
    
    @objc func rightItemClick(){
        print("ddd----ddddddd")
    }
    
    
//    @objc func leftItemClick() {
//        self.navigationController?.pushViewController(ZJProfileViewController(), animated: true)
//    }
//
    
    
    
    
}
