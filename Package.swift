// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FloatingSegmentedControl",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FloatingSegmentedControl",
            targets: ["FloatingSegmentedControl"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "FloatingSegmentedControl",
            dependencies: []),
        .testTarget(
            name: "FloatingSegmentedControlTests",
            dependencies: ["FloatingSegmentedControl"]),
    ]
)
