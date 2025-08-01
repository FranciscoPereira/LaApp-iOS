// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SavedFreature",
    platforms: [ .iOS(.v18) ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SavedFreature",
            targets: ["SavedFreature"]
        ),
    ],
    dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../LaAppNavigation"),
        .package(url: "https://github.com/BarredEwe/Prefire.git", from: "4.0.0"),
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.12.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SavedFreature",
            dependencies: [
            "DesignSystem",
            "LaAppNavigation",
            ]
        ),
        .testTarget(
            name: "SavedFreatureTests",
            dependencies: [
                "SavedFreature",
                .product(name: "Prefire", package: "Prefire"),
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
            ],
            plugins: [
                // For Snapshot Tests
                .plugin(name: "PrefireTestsPlugin", package: "Prefire")
            ]
        ),
    ]
)
