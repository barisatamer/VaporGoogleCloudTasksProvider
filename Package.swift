// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporGoogleCloudTasksProvider",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "VaporGoogleCloudTasksProvider", targets: ["VaporGoogleCloudTasksProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-rc"),
        .package(url: "https://github.com/barisatamer/SwiftGoogleCloudTasks.git", from: "0.0.8"),
    ],
    targets: [
        .target(
            name: "VaporGoogleCloudTasksProvider",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "SwiftGoogleCloudTasks", package: "SwiftGoogleCloudTasks")
            ]),
        .testTarget(
            name: "VaporGoogleCloudTasksProviderTests",
            dependencies: ["VaporGoogleCloudTasksProvider"]),
    ]
)
