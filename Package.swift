// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// https://developer.apple.com/documentation/xcode/creating_a_standalone_swift_package_with_xcode?language=objc
import PackageDescription

let BrightcovePlayerSDK = Package(
    name: "IMA Plugin for Brightcove Player SDK",
    platforms: [
        .iOS(.v14), .tvOS(.v12)
    ],
    products: [
        .library(
            name: "BrightcoveIMA",
            targets: ["BrightcoveIMA"])
    ],
    dependencies: [
         .package(url: "https://github.com/brightcove/brightcove-player-sdk-ios.git", from: "6.10.5"),
    ],
    targets: [
        .binaryTarget(
            name: "BrightcoveIMA",
            path: "xcframework/BrightcoveIMA.xcframework",
            dependencies: [.product(name: "BrightcovePlayerSDK", package: "brightcove-player-sdk-ios")]),
        )
    ]
)

