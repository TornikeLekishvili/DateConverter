// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DateConverter",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DateConverter",
            targets: ["DateConverter"]
        ),
    ],
    targets: [
        .target(
            name: "DateConverter",
            dependencies: []
        )
    ]
)


