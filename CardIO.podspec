Pod::Spec.new do |s|
    s.name             = "CardIO"
    s.version          = "5.4.1"
    s.summary          = "Credit card scanning for mobile app"

    s.homepage         = "https://github.com/transferwise/card.io-iOS-source"
    s.license          = 'MIT'
    s.author           = { "CardIO" => "support@paypal.com" }
    s.source           = { :git => "https://github.com/transferwise/card.io-iOS-source", :tag => s.version.to_s, :submodules => true }
    s.social_media_url   = "https://twitter.com/cardio"
  
  
    s.requires_arc = true
 
    s.ios.deployment_target = '9.0'
    s.osx.deployment_target = '10.10'
    s.tvos.deployment_target = '9.0'
    s.watchos.deployment_target = '2.0'
  
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
    s.swift_version = '5.0'

    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SRCROOT)/CardIO/dmz' }
  
    s.subspec 'Core' do |core|
      core.ios.deployment_target = '9.0'
      core.osx.deployment_target = '10.10'
      core.tvos.deployment_target = '9.0'
      core.watchos.deployment_target = '2.0'
      core.source_files = "Classes/*.{c,mm,h}", "CardIO_Public_API/*.h", "dmz/dmz*.h", "dmz/opencv2/core/core_c.h", "dmz/opencv2/core/types_c.h"
      core.public_header_files = "CardIO_Public_API/*.h"
    end
  
 
end
