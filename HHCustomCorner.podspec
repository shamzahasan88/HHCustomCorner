#
# Be sure to run `pod lib lint HHCustomCorner.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HHCustomCorner'
  s.version          = '0.1.3'
  s.summary          = 'Awesome library to customize corners of UIView and UIButton. Now you can customize each corner differently'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A simple and easy to use library to customize each corner of UIView and UIButton. You also can implement outline (stroke) with different color and width.'
  s.swift_version = '4.0'
  s.homepage         = 'https://github.com/shamzahasan88/HHCustomCorner'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shamzahasan88' => 'shamzahasan88@gmail.com' }
  s.source           = { :git => 'https://github.com/shamzahasan88/HHCustomCorner.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Classes/*.swift'
  
  # s.resource_bundles = {
  #   'HHCustomCorner' => ['HHCustomCorner/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
