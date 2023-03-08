// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChainAnimation",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(
            name: "ChainAnimation",
            targets: ["ChainAnimation"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ChainAnimation",
            dependencies: []),
        .testTarget(
            name: "ChainAnimationTests",
            dependencies: ["ChainAnimation"]),
    ]
)
