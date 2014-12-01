Pod::Spec.new do |s|

  s.name         = "MAThemeKit"
  s.version      = "1.0"
  s.summary      = "MAThemeKit provides a coherent color theme throughout an entire app using a single line of code."
  s.homepage     = "https://github.com/mamaral/MAThemeKit"
  s.license      = "MIT"
  s.author       = { "Mike Amaral" => "mike.amaral36@gmail.com" }
  s.social_media_url   = "http://twitter.com/MikeAmaral"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/mamaral/MAThemeKit.git", :tag => "v1.0" }
  s.source_files  = "MAThemeKit/MAThemeKit.{h,m}"
  s.requires_arc = true

end
