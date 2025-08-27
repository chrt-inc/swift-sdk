// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Chrt",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "Chrt",
            targets: ["Chrt"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Chrt",
            path: "Sources"
        )
    ]
)
