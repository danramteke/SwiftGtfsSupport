// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "SwiftGtfsSupport",
    dependencies: [
        .Package(url: "https://github.com/apple/swift-protobuf.git", Version(0,9,901)),   
    ]
)
