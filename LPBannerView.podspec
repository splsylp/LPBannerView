Pod::Spec.new do |s|

  s.name         = "LPBannerView"
  s.version      = "1.0.0"
  s.summary      = "无限循环轮播图-Swift"
  s.description  = "使用collectionView实现的无限循环滚动轮播图，支持横向竖向滚动及添加图片文字介绍等多种功能，短小精悍、集成方便~"
  
  s.homepage     = "https://github.com/splsylp/LPBannerView"
  s.license      = "MIT"
  s.author       = { "Tony" => "961505161@qq.com" }

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/splsylp/LPBannerView.git", :tag => "1.0.0" }
  s.source_files = "LPBannerView/Source/*.swift"
  
  s.frameworks = "UIKit"
  s.requires_arc = true
  s.dependency "SDWebImage"

end
