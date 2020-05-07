// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "TerrariaWorldParser",
    products: [
        .library(name: "TerrariaWorldParser", targets: ["TerrariaWorldParser"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Xenoxiluna/SwiftyBytes.git", from: "0.1.0"),
    ],
    targets: [
        .target(name: "TerrariaWorldParser", dependencies: ["SwiftyBytes"]),
        .testTarget(name: "TerrariaWorldParserTests", dependencies: ["TerrariaWorldParser"]),
    ]
)
