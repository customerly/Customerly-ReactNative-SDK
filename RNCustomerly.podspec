require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNCustomerly"
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = <<-DESC
                  RNCustomerly
                   DESC
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/Customerly/Customerly-ReactNative-SDK.git", :tag => "master" }
  s.requires_arc = true
  s.static_framework = true

  s.dependency 'React'
  s.dependency 'CustomerlySDK'
  s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/CustomerlySDK/CustomerlySDK"'
  }

  s.source_files        = 'ios/**/*.{h,m,swift}'
  #s.source_files  = "RNCustomerly/**/*.{h,m,swift}"
  s.exclude_files       = 'android/**/*'
  #s.dependency "others"

end