// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_icmp_ping",
    platforms: [
        .iOS("9.0"),
    ],
    products: [
        .library(name: "flutter-icmp-ping", targets: ["flutter_icmp_ping"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "flutter_icmp_ping",
            dependencies: [],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("GBPing"),
            ]
        )
    ]
)
