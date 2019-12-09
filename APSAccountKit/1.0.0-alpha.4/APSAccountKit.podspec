#
# Be sure to run `pod lib lint APSAccountKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'APSAccountKit'
  s.version          = '1.0.0-alpha.4'
  s.summary          = 'APSAccountKit'


  s.description      = <<-DESC
  APSAccountKit
                       DESC

  s.homepage         = 'https://github.com/apusapps/APSAccountKit'
  s.author           = { 'follyxing' => 'i@xingcheng.me' }
  s.source           = { :git => 'https://github.com/apusapps/APSAccountKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  


  s.subspec 'Core' do |ss|
    ss.ios.vendored_frameworks = "frameworks/Release/APSAccountKitCore.framework"
    ss.dependency 'AFNetworking'
    ss.dependency 'XALFrameworks/APSUtilities', '~> 0.1.24.alpha.1'
  end

  s.subspec 'Facebook' do |ss|
    ss.ios.vendored_frameworks = "frameworks/Release/APSAccountKitFacebook.framework"
    ss.dependency 'APSAccountKit/Core'
    ss.dependency 'FBSDKLoginKit'
  end

  s.subspec 'UnityForHappy' do |ss|
    ss.ios.vendored_frameworks = "frameworks/Release/APSAccountKitUnityForHappy.framework"
    ss.dependency 'APSAccountKit/Core'
    ss.dependency 'APSAccountKit/Facebook'
  end

  s.subspec 'Core-DEBUG' do |ss|
    ss.ios.vendored_frameworks = "frameworks/Release/APSAccountKitCore.framework"
    ss.dependency 'AFNetworking'
    ss.dependency 'XALFrameworks/APSUtilities', '~> 0.1.24.alpha.1'
  end

  s.subspec 'Facebook-DEBUG' do |ss|
    ss.ios.vendored_frameworks = "frameworks/Release/APSAccountKitFacebook.framework"
    ss.dependency 'APSAccountKit/Core'
    ss.dependency 'FBSDKLoginKit'
  end

  s.subspec 'UnityForHappy-DEBUG' do |ss|
    ss.ios.vendored_frameworks = "frameworks/Release/APSAccountKitUnityForHappy.framework"
    ss.dependency 'APSAccountKit/Core'
    ss.dependency 'APSAccountKit/Facebook'
  end
   
end
