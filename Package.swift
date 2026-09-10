// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XXApp", platforms: [.macOS(.v14)],
    dependencies: [
        .package(url: "https://github.com/OpenSwiftUIProject/OpenCombine.git", from: "0.14.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "XXApp",
            dependencies: [.product(name: "OpenCombine", package: "OpenCombine")]
        ),
        .testTarget(
            name: "XXAppTests",
            dependencies: ["XXApp"]
        ),
    ],
    swiftLanguageModes: [.v6]
)