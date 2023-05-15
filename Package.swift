// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "HLSCachingReverseProxyServer",
  platforms: [
    .macOS(.v10_15), .iOS(.v11), .tvOS(.v11)
  ],
  products: [
    .library(name: "HLSCachingReverseProxyServer", targets: ["HLSCachingReverseProxyServer"]),
  ],
  dependencies: [
    .package(url: "https://github.com/SlaunchaMan/GCDWebServer.git", branch: "swift-package-manager"),
    .package(url: "https://github.com/pinterest/PINCache.git", .upToNextMinor(from: "3.0.0")),
    .package(url: "https://github.com/devxoul/SafeCollection.git", .upToNextMajor(from: "3.1.0")),
  ],
  targets: [
    .target(name: "HLSCachingReverseProxyServer", dependencies: ["GCDWebServer", "PINCache"]),
    .testTarget(name: "HLSCachingReverseProxyServerTests", dependencies: ["HLSCachingReverseProxyServer", "SafeCollection"]),
  ]
)
