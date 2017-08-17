//
//  OneController.swift
//  LPBannerView
//
//  Created by Tony on 2017/8/16.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class OneController: UIViewController, LPBannerViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 图片URL 或者 本地图片名称
        let imagesArr = [
            "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=374820632,3899106160&fm=26&gp=0.jpg",
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1502788737522&di=6d4c4949899026e699c36d28ea679baf&imgtype=0&src=http%3A%2F%2Fwww.sd.xinhuanet.com%2Fnews%2F2006-12%2F30%2Fxin_05120330153551544184.jpg",
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1502789060657&di=8a70220dd692c1c3bc0b95729bce9334&imgtype=0&src=http%3A%2F%2Fs8.sinaimg.cn%2Fmiddle%2F5e8dab4dtb2ebaf19ee17%26690"
        ]
        // 图片标题介绍
        let titles = ["青岛栈桥，来快活啊", "崂山北九水，小伙伴们来玩啊", "极地海洋世界，快来啊啊啊"]
        
        
        // 轮播图一（最简单基本的用法）
        let bannerView = LPBannerView(frame: CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: 180))
        view.addSubview(bannerView)
        bannerView.delegate = self
        bannerView.placeholderImage = #imageLiteral(resourceName: "placeholder")
        bannerView.clickItemClosure = { (index) -> Void in
            print("闭包回调---\(index)")
        }
        // 异步网络请求得到相关数据之后赋值刷新
        bannerView.imagePaths = imagesArr
        
        
        // 轮播图二
        let bannerView2 = LPBannerView(frame: CGRect(x: 0, y: bannerView.frame.maxY + 20, width: bannerView.bounds.width, height: bannerView.bounds.height))
        view.addSubview(bannerView2)
        bannerView2.placeholderImage = #imageLiteral(resourceName: "placeholder")
        bannerView2.delegate = self
        bannerView2.clickItemClosure = { (index) -> Void in
            print("闭包回调--->>>\(index)")
        }
        
        bannerView2.pageContolAliment = .right
        bannerView2.pageDotColor = UIColor.yellow
        bannerView2.currentPageDotColor = UIColor.green
        bannerView2.scrollDirection = .vertical
//        bannerView2.autoScrollTimeInterval = 1.0
//        //bannerView2.isAutoScroll = false // 设置后将无法自动滚动
//        //bannerView2.isInfiniteLoop = false // 设置后将无法无限循环
//        bannerView2.isHiddenWhenSinglePage = false
//        bannerView2.pageControlBottomDistance = 5
//        bannerView2.pageControlSideDistance = 5
//        bannerView2.titleLabelHeight = 45
//        bannerView2.titleLabelTextColor = UIColor.green
//        bannerView2.titleLabelTextFont = UIFont.systemFont(ofSize: 16)
//        bannerView2.titleLabelTextAlignment = .center
//        bannerView2.titleLabelBackgroundColor = UIColor(red: 74 / 255.0, green: 163 / 255.0, blue: 243 / 255.0, alpha: 0.7)
        
        // 异步网络请求得到相关数据之后赋值刷新
        bannerView2.imagePaths = imagesArr
        bannerView2.titlesArr = titles
    }
    
    // 轮播图点击回调方法
    func cycleScrollView(_ scrollView: LPBannerView, didSelectItemAtIndex index: Int) {
        print("方法回调--->>>\(index)")
    }
}
