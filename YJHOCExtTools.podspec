Pod::Spec.new do |spec|
  spec.name         = "YJHOCExtTools"
  spec.version      = "0.0.6"
  spec.summary      = "A simple Tool"
  spec.homepage     = "https://github.com/yunjinghui123/YJHOCExtTools"
  spec.author       = { "yunjinghui123" => "1432680302@qq.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/yunjinghui123/YJHOCExtTools.git", :tag => "#{spec.version}" }
  spec.source_files  = "YJHOCExtTools", "YJHOCExtTools/**/*.{h,m}"
  spec.requires_arc = true
end
