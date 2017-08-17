//
//  TwoController.swift
//  LPBannerView
//
//  Created by Tony on 2017/8/16.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class TwoController: UIViewController {
    
    
    @IBOutlet weak var bannerView: LPBannerView!
    @IBOutlet weak var indexLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 加载本地轮播图
        let images = ["ren", "run", "ying"]
        let titles = ["这是程序猿吗？", "来追我啊，来啊！", "来和太阳肩并肩"]
        
        // 通过storyboard创建加载
        bannerView.placeholderImage = #imageLiteral(resourceName: "placeholder")
        bannerView.pageContolAliment = .right
        
        bannerView.imagePaths = images
        bannerView.titlesArr = titles
        bannerView.clickItemClosure = { [weak self] (index) -> Void in
            print("闭包回调---\(index)")
            self?.indexLabel.text = "第\(index + 1)张图片被点击"
            self?.indexLabel.textAlignment = .center
        }
    }
    
    deinit {
        print("deinit---TwoVC")
        // 调用该方法释放bannerView对象
        bannerView.releaseCarouseView()
    }
}
