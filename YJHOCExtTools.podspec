Pod::Spec.new do |spec|
  spec.name         = "YJHOCExtTools"
  spec.version      = "0.1.0"
  spec.summary      = "A simple Tool"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage     = "https://github.com/yunjinghui123/YJHOCExtTools"
  spec.author       = { "yunjinghui123" => "1432680302@qq.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/yunjinghui123/YJHOCExtTools.git", :tag => "#{spec.version}" }
  spec.source_files  = "YJHOCExtTools/*.{h,m}"
  spec.requires_arc = true
  spec.resource_bundles = {'YJHOCExtTools' => ['YJHOCExtTools/Resources/PrivacyInfo.xcprivacy']}
end
