// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "HHCustomCorner",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "HHCustomCorner",
            targets: ["HHCustomCorner"]),
    ],
    targets: [
        .target(
            name: "HHCustomCorner",
            path: "Sources/HHCustomCorner")
    ]
)
