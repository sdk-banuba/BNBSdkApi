// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.10.0-24-gb831098a87"

let package = Package(
    name: "BNBSdkApi",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBSdkApi",
            targets: [
                "BNBSdkApi",
                "BNBSdkApi_BNBSdkCore"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBSdkApi",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.10.0-24-gb831098a87/BNBSdkApi.zip",
            checksum: "d6d34c2bda37b7a7e7dd547fbed8f84de319916afff5cc27a0701746c5c28555"
        ),
        .target(
            name: "BNBSdkApi_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
    ]
)
