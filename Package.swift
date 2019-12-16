// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "SnowplowTracker",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "SnowplowTracker",
            targets: ["SnowplowTracker"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ashleymills/Reachability.swift", from: "4.3.1"),
        .package(url: "https://github.com/ccgus/fmdb", from: "2.6.2")
    ],
    targets: [
        .target(
            name: "SnowplowTracker",
            path: "Snowplow",
            dependencies: [])
    ]
)