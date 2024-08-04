Pod::Spec.new do |spec|
  spec.name         = 'BasicBottomSheet'
  spec.version      = ENV['LIB_VERSION'] || '0.1.0'
  spec.summary      = 'An easy way to present a bottom sheet.'
  spec.homepage     = 'https://github.com/OhKanghoon/BasicBottomSheet'
  spec.license      = { type: 'MIT', file: 'LICENSE' }
  spec.author       = { 'OhKanghoon' => 'ggaa96@naver.com' }
  spec.source       = { git: 'https://github.com/OhKanghoon/BasicBottomSheet.git', tag: spec.version.to_s }

  spec.source_files = 'Sources/**/*.{swift,h,m}'
  spec.frameworks   = 'UIKit'
  spec.swift_version = '5.0'

  spec.ios.deployment_target = '11.0'
end
