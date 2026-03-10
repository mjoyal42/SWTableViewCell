// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SWTableViewCell",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SWTableViewCell",
            targets: ["SWTableViewCell"]
        )
    ],
    targets: [
        .target(
            name: "SWTableViewCell",
            dependencies: [],
            path: "SWTableViewCell/PodFiles",
            sources: ["."],
            publicHeadersPath: "."
        )
    ]
)
