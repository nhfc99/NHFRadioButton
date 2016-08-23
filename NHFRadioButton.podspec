Pod::Spec.new do |s|
  s.name             = "NHFRadioButton"
  s.version          = "0.0.1"
  s.summary          = "这是一个自由度非常大的单选框按钮组件"
  s.homepage         = "https://github.com/nhfc99/NHFRadioButton"  
  s.license          = 'MIT'
  s.author           = {"牛宏飞"=>"nhfc99@163.com"}  
  s.source           = {:git => "https://github.com/nhfc99/NHFRadioButton.git",:tag => s.version.to_s}

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true
  s.source_files = 'NHFRadioButton/*.{h,m}'  
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
