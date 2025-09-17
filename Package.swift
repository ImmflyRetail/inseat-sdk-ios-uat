// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Inseat",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Inseat", 
            targets: [
                "InseatWrapper"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/getditto/DittoSwiftPackage", exact: "4.11.1")
    ],
    targets: [
        .target(
            name: "InseatWrapper",
            dependencies: [
                .target(name: "InseatFramework"),
                .product(name: "DittoSwift", package: "DittoSwiftPackage")
            ]
        ),
        .binaryTarget(
            name: "InseatFramework",
            url: "https://app-cdn.immflyretail.link/inseat-ios-sdk/0.1.9/Inseat.xcframework.zip",
            checksum: "c73b2cb126f46f0f9e89e51bf98a81c7953df424ca5d41f964e1be71261335f6"
        )
    ]
)
