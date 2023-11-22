// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "collection-view-left-align-flow-layout",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "collection-view-left-align-flow-layout",
            targets: ["collection-view-left-align-flow-layout"]
        )
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "collection-view-left-align-flow-layout",
            path: "Source"
        )
    ]
)
