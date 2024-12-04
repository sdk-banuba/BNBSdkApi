// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-219-gefae079ac3"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-219-gefae079ac3/BNBSdkApi.zip",
            checksum: "c56fd455bea8cbe59b928e0f60fd295e2c3028edb89cf96c0d28a7f125418d2c"
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
