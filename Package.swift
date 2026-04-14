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
        .package(url: "https://github.com/getditto/DittoSwiftPackage", exact: "4.13.0")
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
            url: "https://app-cdn.immflyretail.link/inseat-ios-sdk/1.0.7/Inseat.xcframework.zip",
            checksum: "c70e1ea5c3eb1d6083b70e48eae67772f88e59bd559612eb5912492d23c1a876"
        )
    ]
)
