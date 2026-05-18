// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlagPhoneNumber",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "FlagPhoneNumber",
            targets: ["FlagPhoneNumber", "libPhoneNumber"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "libPhoneNumber",
            dependencies: [],
            path: "Sources/libPhoneNumber",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Internal")
            ]
        ),
        .target(
            name: "FlagPhoneNumber",
            dependencies: ["libPhoneNumber"],
            path: "Sources",
            exclude: ["Info.plist", "libPhoneNumber"],
            resources: [
                .process("Resources")
            ]
        ),
    ]
)
