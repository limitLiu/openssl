NAME="openssl"
VERSION="1.1.1m"

Pod::Spec.new do |s|
  s.name             = "#{NAME}"
  s.version          = "#{VERSION}"
  s.summary          = "A Pod Warper for #{NAME}."
  s.description      = "#{NAME} code base."

  s.homepage         = 'https://github.com/limitLiu/#{NAME}'
  s.license          = { :type => 'MIT', :text => 'LICENSE' }
  s.author           = { 'Limit' => 'limitliu@qq.com' }
  s.source           = { :http => "https://github.com/limitLiu/#{NAME}" }
  
  s.ios.deployment_target = '9.0'
  
  s.ios.preserve_paths      = "source/ios/#{s.version}/include"
  s.ios.header_mappings_dir = "source/ios/#{s.version}/include"

  s.ios.source_files       = "source/ios/#{s.version}/include/#{NAME}/*.h"
  s.ios.vendored_libraries = "source/ios/#{s.version}/lib/*.a"
end
