// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChainAnimation",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(
            name: "ChainAnimation",
            targets: ["ChainAnimation"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/SwiftLint", revision: "a876e860ee0e166a05428f430888de5d798c0f8d"),
    ],
    targets: [
        .target(
            name: "ChainAnimation",
            dependencies: [],
            plugins: [.plugin(name: "SwiftLintPlugin", package: "SwiftLint")]
        ),
        .testTarget(
            name: "ChainAnimationTests",
            dependencies: ["ChainAnimation"]
        ),
    ]
)
