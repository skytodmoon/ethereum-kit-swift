#
# Be sure to run `pod lib lint EthereumUnitSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EthereumKitSwift'
  s.version          = '0.1.0'
  s.summary          = 'Ethereum kit'
  s.homepage         = 'https://github.com/anchorpw/ethereum-kit-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ne0nx' => 'd.karachentsov@gmail.com' }
  s.source           = { :git => 'https://github.com/anchorpw/ethereum-kit-swift', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'EthereumKitSwift/**/*.{swift,h,m}'
  s.resources = ['EthereumKitSwift/**/*.json']
  s.dependency 'CryptoSwift', '~> 0.11.0'
  s.dependency 'BigInt', '~> 3.1'
  s.dependency 'libscrypt', '~> 1.21'
  s.module_map = 'EthereumKitSwift.modulemap'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/../Libraries/openssl/include ${PODS_ROOT}/../Libraries/secp256k1/include',
                 'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/../Libraries/openssl/lib ${PODS_ROOT}/../Libraries/secp256k1/lib',
                 'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/../Libraries'
  }
end
