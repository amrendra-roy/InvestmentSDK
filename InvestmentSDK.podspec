#
# Be sure to run `pod lib lint InvestmentSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'InvestmentSDK'
  s.version          = '0.1.0'
  s.summary          = 'A SDK/Library that will provide the all features about investment in back like Mutual funds, RD, FD.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A Common frame for my company that will provide an interface to calculate investment facilities for any bank. Any IT company can use this in swift project as plug and play.
                       DESC

  s.homepage         = 'https://github.com/amrendra-roy/InvestmentSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Amrendra' => 'amar.roy17@gmail.com' }
  s.source           = { :git => 'https://github.com/amrendra-roy/InvestmentSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '14.0'

  s.source_files = 'InvestmentSDK/Classes/**/*'
  
   s.resource_bundles = {
     'Resources' => ['InvestmentSDK/Assets/MyPic2014.jpg']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
