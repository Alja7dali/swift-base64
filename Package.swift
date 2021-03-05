// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Base64",
  products: [
    .library(name: "Base64", targets: ["Base64"]),
  ],
  dependencies: [
    .package(url: "https://github.com/alja7dali/swift-bits", from: "1.0.0"),
  ],
  targets: [
    .target(name: "Base64", dependencies: ["Bits"]),
    .testTarget(name: "Base64Tests", dependencies: ["Base64"]),
  ]
)
