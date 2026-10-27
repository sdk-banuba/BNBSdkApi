// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.18.6"

let package = Package(
    name: "BNBSdkApi",
    platforms: [
        .iOS(.v15)
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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.18.6/BNBSdkApi.zip",
            checksum: "a481274b114e310c5ee68aa7a64ef37768982852e53fe794fa7d08cf53d65cde"
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
