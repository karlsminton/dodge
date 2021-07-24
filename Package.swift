// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
// swift package update && swift run

import PackageDescription

let package = Package(
    name: "Dodge",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "Raylib", url: "https://github.com/conifer-dev/raylib-swift", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Dodge",
            dependencies: ["Raylib"]
        ),
        .testTarget(
            name: "DodgeTests",
            dependencies: ["Dodge"]
        ),
    ]
)
