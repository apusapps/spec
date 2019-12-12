#
# Be sure to run `pod lib lint APSAccountKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'APSAccountKit'
  s.version          = '1.0.0-alpha.7'
  s.summary          = 'APSAccountKit'


  s.description      = <<-DESC
  APSAccountKit
                       DESC

  s.homepage         = 'https://github.com/machbirdx/APSAccountKit'
  s.author           = { 'follyxing' => 'i@xingcheng.me' }
  s.source           = { :git => 'https://ea4f3b7e6d7654e0be3841e49d4f2680e8512529@github.com/machbirdx/APSAccountKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  


  s.subspec 'Core' do |ss|
    ss.ios.vendored_frameworks = "frameworks/Release/APSAccountKitCore.framework"
    ss.dependency 'AFNetworking'
    ss.dependency 'XALFrameworks/APSUtilities', '0.0.2'
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
    ss.dependency 'UnzipKit'
  end
   
end
