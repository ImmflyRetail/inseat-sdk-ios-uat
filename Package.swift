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
        .package(url: "https://github.com/getditto/DittoSwiftPackage", exact: "4.12.3")
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
            url: "https://app-cdn.immflyretail.link/inseat-ios-sdk/0.1.19/Inseat.xcframework.zip",
            checksum: "eb6c015ace991cd0300994b54500f25348fcd647754ac78998a4014fb4c015d0"
        )
    ]
)
