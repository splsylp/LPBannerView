# LPBannerView
#### 使用collectionView实现的无限循环滚动轮播图，支持横向竖向滚动及添加图片文字介绍等多种功能，短小精悍、集成方便~

![image](https://github.com/splsylp/LPTest/blob/master/ShowGif/bannerView.gif )

#### 实现功能
* 实现本地图片或网络图片的展示，加载失败则显示默认图
* 实现图片下方文字介绍，可自定义样式
* 实现横向和竖向滚动
* 实现自定义轮播时间间隔
* 实现数据异步请求延时加载后刷新视图
* 实现pageControl位置设置
* 实现点击回调代理和闭包
* 实现手码和storyboard方式初始化控件
---

### 安装

#### CocoaPods
Podfile文件:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'LPBannerView'
end
```

然后执行:

```bash
$ pod install
```
若提示查找不到该库，那么请先执行：
```bash
$ pod setup
```

#### 手动集成
把LPBannerView/Source文件夹(及其下的两个swift文件)手动拖入到项目中即可
> 该控件目前使用的是Kingfisher进行的图片缓存处理，如果使用CocoaPods集成则会自动依赖该库，如果您目前使用的是[SDWebImage](https://github.com/rs/SDWebImage)或者其他三方库，建议手动导入集成，然后替换掉[Kingfisher](https://github.com/onevcat/Kingfisher)



### 使用
#### 初始化
```Swift
let bannerView = LPBannerView(frame: frame)
bannerView.delegate = self
bannerView.placeholderImage = UIImage(named: "xxx")
view.addSubview(bannerView)

bannerView.clickItemClosure = { (index) -> Void in
    print("闭包回调---\(index)")
}

// 异步网络请求得到相关数据之后赋值刷新
bannerView.imagePaths = imageArr // 请求到的图片url字符串或者本地图片名称
bannerView.titlesArr = titleArr // 图片下方文字介绍
```

#### 轮播图点击回调方法
```Swift
func cycleScrollView(_ scrollView: LPBannerView, didSelectItemAtIndex index: Int) {
    print("方法回调--->>>\(index)")
}
```


#### 外部调用属性
```Swift
/// 代理
public weak var delegate
/// 闭包
public var clickItemClosure

// MARK: 图片、标题
/// 图片下方对应的文字标题数组
public var titlesArr: [String]
/// 图片路径数组
public var imagePaths: [String]
/// 网络图片未加载出来时的默认图
public var placeholderImage

// MARK: 滚动
/// 是否无限循环，默认true
public var isInfiniteLoop
/// 是否自动滚动，默认true
public var isAutoScroll
/// 自动滚动间隔时间，默认2秒
public var autoScrollTimeInterval
/// 图片滚动方向，默认横向滚动
public var scrollDirection

// MARK: 分页控件
/// 分页控件位置，默认居中
public var pageContolAliment
/// 分页控件距离轮播图的底部间距，默认10
public var pageControlBottomDistance
/// 分页控件距离轮播图的左边或右边的间距(居左或居右显示时)，默认10
public var pageControlSideDistance
/// 当前分页控件小圆标颜色，默认白色
public var currentPageDotColor
/// 其他分页控件小圆标颜色，默认灰色
public var pageDotColor
/// 是否在只有一张图时隐藏分页控件，默认隐藏
public var isHiddenWhenSinglePage

// MARK: 标题文字
/// 轮播文字label字体颜色，默认白色
public var titleLabelTextColor
/// 轮播文字label字体大小，默认15
public var titleLabelTextFont
/// 轮播文字label背景颜色，默认黑色半透明
public var titleLabelBackgroundColor
/// 轮播文字label高度，默认35
public var titleLabelHeight
/// 轮播文字label对齐方式，默认居左
public var titleLabelTextAlignment
```

#### 友情提示 --- 轮播图添加后在其上方有一片空白
这有可能是因为当前控制器中包含了唯一一个scrollView导致，可以在viewDidLoad方法中设置automaticallyAdjustsScrollViewInsets = false试一下~

---
### 您的star，是对我最大的鼓励与支持~
