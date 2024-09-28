Pod::Spec.new do |s|
  s.name         = "WechatOpenSDKGlobal"
  s.version      = "2.0.4"
  s.summary      = "Includes the following WeChat features: Share to Moments, Log In via WeChat, Save to Favorites, WeChat Pay, etc."
  s.description  = <<-DESC
                    This SDK may be used to invoke WeChat features including Share to Moments, Log In via WeChat, Save to Favorites, and WeChat Pay.
                   DESC
  s.homepage     = "https://mp.weixin.qq.com"
  s.license      = { :type => "Copyright", :text => " Copyright 2020 tencent.com. All rights reserved.\n" }
  s.authors      = { "tencent" => "weixin-open@qq.com" }
  s.source       = { :http => "https://assets.opnaicn.com/OpenSDK2.0.4.zip", :type => "zip" }
  
  # Set the deployment target to 12.0
  s.platform     = :ios, "12.0"
  s.requires_arc = false

  s.source_files = "OpenSDK2.0.4/*.{h}"
  s.vendored_libraries = "OpenSDK2.0.4/libWechatOpenSDK.a"

  s.frameworks = ["Security", "UIKit", "CoreGraphics", "WebKit"]
  s.libraries  = ["z", "sqlite3.0", "c++"]

  # Exclude arm64 architecture for iOS Simulator
  s.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
  }
  
  s.user_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64"
  }
end
