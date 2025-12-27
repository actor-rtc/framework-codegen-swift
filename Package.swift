// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "framework-codegen-swift",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
    ],
    products: [
        .executable(name: "protoc-gen-actrframework-swift", targets: ["framework-codegen-swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.28.2"),
        .package(url: "https://github.com/actor-rtc/actr-protocols-swift.git", from: "0.1.0"),
    ],
    targets: [
        .executableTarget(
            name: "framework-codegen-swift",
            dependencies: [
                .product(name: "SwiftProtobufPluginLibrary", package: "swift-protobuf"),
                .product(name: "ActrProtocols", package: "actr-protocols-swift"),
            ]
        ),
    ]
)
