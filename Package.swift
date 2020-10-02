// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "TerrariaWorldParser",
    products: [
        .library(name: "TerrariaWorldParser", targets: ["TerrariaWorldParser"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Xenoxiluna/SwiftyBytes.git", .upToNextMinor(from: "0.4.4")),
    ],
    targets: [
        .target(name: "TerrariaWorldParser", dependencies: ["SwiftyBytes"]),
        .testTarget(name: "TerrariaWorldParserTests", dependencies: ["TerrariaWorldParser"]),
    ]
)
