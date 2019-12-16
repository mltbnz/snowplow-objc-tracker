// swift-tools-version:5.0
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
        .package(url: "https://github.com/ccgus/fmdb", .revision("9b100cc3dd83ff88a17a4da8718eab4b08e2fe67"))
    ],
    targets: [
        .target(
            name: "SnowplowTracker",
            path: "Snowplow",
            sources: ["Snowplow"],
            publicHeadersPath: "Snowplow"
        )
    ]
)