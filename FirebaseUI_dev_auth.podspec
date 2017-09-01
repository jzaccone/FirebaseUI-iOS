Pod::Spec.new do |s|
  s.name         = 'FirebaseAuthUI'
  s.version      = '4.1.0'
  s.summary      = 'UI Auth Base library for Firebase.'
  s.homepage     = 'https://github.com/jzaccone/FirebaseUI-iOS'
  s.license      = { :type => 'Apache 2.0' }
  s.author       = 'Firebase'
  s.source = { :git => "https://github.com/jzaccone/FirebaseUI-iOS.git" }
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.ios.framework = 'UIKit'
  s.requires_arc = true
  s.default_subspecs = 'AuthBase'

  s.subspec 'AuthBase' do |authbase|
    authbase.source_files = "FirebaseAuthUI/**/*.{h,m}"
    authbase.resource_bundle = {
      'FirebaseAuthUI' => ['FirebaseAuthUI/Strings/**/*',
                           'FirebaseAuthUI/Resources/**/*',
                           'FirebaseAuthUI/**/*.xib']
    }
    authbase.dependency 'Firebase/Analytics'
    authbase.dependency 'FirebaseAuth'
  end

end
