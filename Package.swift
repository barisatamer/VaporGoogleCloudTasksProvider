// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporGoogleCloudTasksProvider",
    platforms: [
       .macOS(.v10_14)
    ],
    products: [
        .library(name: "VaporGoogleCloudTasksProvider", targets: ["VaporGoogleCloudTasksProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor", from: "4.0.0-beta.4.2"),
        .package(url: "https://github.com/barisatamer/SwiftGoogleCloudTasks.git", from: "0.0.2"),
    ],
    targets: [
        .target(
            name: "VaporGoogleCloudTasksProvider",
            dependencies: [
                "Vapor",
                "SwiftGoogleCloudTasks",
            ]),
        .testTarget(
            name: "VaporGoogleCloudTasksProviderTests",
            dependencies: ["VaporGoogleCloudTasksProvider"]),
    ]
)
