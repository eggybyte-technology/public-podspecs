Pod::Spec.new do |s|
  s.name = "KSAdSDK"
  s.version = "1.0.0"
  s.summary = "EggyByte Ad SDK - EBKSAdSDK Integration"
  s.description = "EggyByte Ad SDK provides comprehensive advertising solutions with KSAdSDK integration for iOS applications, rebranded as EBKSAdSDK."
  s.authors = {"EggyByte Technology 2025"=>"affair@eggybyte.com"}
  s.homepage = "https://github.com/eggybyte-technology/ad-kscu.git"
  s.frameworks = ["Foundation", "UIKit", "MobileCoreServices", "CoreGraphics", "Security", "SystemConfiguration", "CoreTelephony", "AdSupport", "CoreData", "StoreKit", "AVFoundation", "MediaPlayer", "CoreMedia", "WebKit", "Accelerate", "CoreLocation", "AVKit", "MessageUI", "QuickLook", "AudioToolBox", "JavaScriptCore", "CoreMotion", "Photos"]
  s.libraries = ["z", "resolv.9", "sqlite3", "c++", "c++abi"]
  s.source = { 
    :git => "https://github.com/eggybyte-technology/ad-kscu.git", 
    :tag => s.version.to_s 
  }

  s.license = { :type => "MIT", :file => "LICENSE" }
  s.ios.deployment_target    = '12.0'
  s.ios.vendored_framework   = 'KSAdSDK.xcframework'
  
  # Explicitly expose all public headers
  # s.public_header_files = 'KSAdSDK.xcframework/ios-arm64_armv7/KSAdSDK.framework/Headers/*.h'
  
  # Ensure module map is properly configured
  s.module_name = 'KSAdSDK'
  
  # Support for static framework linking
  # s.static_framework = true
  
  # Ensure proper header search paths
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 armv7 x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
