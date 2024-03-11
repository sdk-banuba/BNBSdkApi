// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-38-g9a4283c65"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.11.1-38-g9a4283c65/BNBSdkApi.zip",
            checksum: "4653a596474c0ed1ef43e90093f68e51afbb59ad90c4dc5e698a92fed1562329"
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
