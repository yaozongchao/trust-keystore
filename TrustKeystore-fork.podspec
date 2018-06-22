Pod::Spec.new do |s|
  s.name         = 'TrustKeystore-fork'
  s.version      = '0.2.4'
  s.summary      = 'A general-purpose Ethereum keystore for managing wallets.'
  s.homepage     = 'https://github.com/yaozongchao/trust-keystore'
  s.license      = 'GPL'
  s.authors      = { 'Alejandro Isaza' => 'al@isaza.ca' }
  s.swift_version = '4.1'

  s.ios.deployment_target = '10.0'

  s.source       = { git: 'https://github.com/yaozongchao/trust-keystore.git', tag: s.version }
  s.source_files = "Sources/**/*.swift"

  s.dependency 'BigInt', '~> 3.0.0'
  s.dependency 'CryptoSwift', '~> 0.8.0'
  s.dependency 'secp256k1_ios', '~> 0.1.0'
  s.dependency 'TrezorCrypto', '~> 0.0.1'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
