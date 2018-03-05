Pod::Spec.new do |s|
  s.name         = 'MMImageBrowser'
  s.summary      = 'A ImageBrowser for iOS.'
  s.version      = '0.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'MMMille' => 'xuemingluan@gmail.com' }
  #s.social_media_url = 'http://blog.MMMille.com'
  s.homepage     = 'https://github.com/MMMille/MMImageBrowser'
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/MMMille/MMImageBrowser.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'MMImageBrowser/**/*.{h,m}'

  s.libraries = 'z', 'sqlite3'
  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'
  s.dependency 'MMMCategory'
  s.dependency 'YYKit'
end
#pod trunk push MMImageBrowser.podspec --allow-warnings
#pod repo push MMImageBrowser MMImageBrowser.podspec --allow-warnings --sources='https://github.com/CocoaPods/Specs.git'