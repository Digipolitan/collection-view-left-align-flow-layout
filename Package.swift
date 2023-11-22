// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "DGCollectionViewLeftAlignFlowLayout",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "DGCollectionViewLeftAlignFlowLayout",
            targets: ["DGCollectionViewLeftAlignFlowLayout"]
        )
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "DGCollectionViewLeftAlignFlowLayout",
            path: "Sources"
        )
    ]
)
