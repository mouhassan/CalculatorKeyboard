// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CalculatorKeyboard",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "CalculatorKeyboard",
            targets: ["CalculatorKeyboard"]
        )
    ],
    targets: [
        .target(
            name: "CalculatorKeyboard",
            dependencies: [],
            path: "Sources/CalculatorKeyboard",
            resources: [
                .process("CalculatorKeyboard.xib"),
                .process("Images.xcassets")
            ]
        ),
        .testTarget(
            name: "CalculatorKeyboardTests",
            dependencies: ["CalculatorKeyboard"],
            path: "Tests/CalculatorKeyboardTests"
        )
    ]
)
