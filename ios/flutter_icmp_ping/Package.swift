// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Xcode's Swift Package Manager does not support a single target mixing Swift
// and Objective-C/C sources, so the vendored GBPing library (Objective-C/C)
// and the plugin implementation (Swift) are split into two targets.

import PackageDescription

let package = Package(
    name: "flutter_icmp_ping",
    platforms: [
        .iOS("9.0"),
    ],
    products: [
        .library(name: "flutter-icmp-ping", targets: ["flutter_icmp_ping", "flutter_icmp_ping_gbping"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "flutter_icmp_ping_gbping",
            path: "GBPing",
            publicHeadersPath: "."
        ),
        .target(
            name: "flutter_icmp_ping",
            dependencies: ["flutter_icmp_ping_gbping"],
            path: "Plugin"
        ),
    ]
)
